
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_cmd {int data_direction; scalar_t__ sam_task_attr; int data_length; int * t_task_cdb; struct pscsi_plugin_task* priv; int se_dev; int t_data_nents; struct scatterlist* t_data_sg; } ;
struct scatterlist {int dummy; } ;
struct request {int retries; int timeout; scalar_t__ sense_len; int * sense; int * cmd; int cmd_len; struct se_cmd* end_io_data; int end_io; int cmd_type; } ;
struct pscsi_plugin_task {int * pscsi_sense; int * pscsi_cdb; } ;
struct pscsi_dev_virt {TYPE_1__* pdv_sd; } ;
struct bio {struct bio* bi_next; } ;
typedef scalar_t__ sense_reason_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {scalar_t__ type; int request_queue; } ;


 int BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 scalar_t__ ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct request*) ;
 scalar_t__ MSG_HEAD_TAG ;
 struct pscsi_dev_virt* PSCSI_DEV (int ) ;
 int PS_RETRY ;
 int PS_TIMEOUT_DISK ;
 int PS_TIMEOUT_OTHER ;
 int REQ_TYPE_BLOCK_PC ;
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 scalar_t__ TYPE_DISK ;
 int bio_endio (struct bio*,int ) ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int,int ) ;
 struct request* blk_get_request (int ,int,int ) ;
 struct request* blk_make_request (int ,struct bio*,int ) ;
 int kfree (struct pscsi_plugin_task*) ;
 struct pscsi_plugin_task* kzalloc (int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int pr_err (char*,...) ;
 scalar_t__ pscsi_map_sg (struct se_cmd*,struct scatterlist*,int ,int,struct bio**) ;
 int pscsi_req_done ;
 int scsi_command_size (int *) ;

__attribute__((used)) static sense_reason_t
pscsi_execute_cmd(struct se_cmd *cmd)
{
 struct scatterlist *sgl = cmd->t_data_sg;
 u32 sgl_nents = cmd->t_data_nents;
 enum dma_data_direction data_direction = cmd->data_direction;
 struct pscsi_dev_virt *pdv = PSCSI_DEV(cmd->se_dev);
 struct pscsi_plugin_task *pt;
 struct request *req;
 struct bio *hbio;
 sense_reason_t ret;





 pt = kzalloc(sizeof(*pt) + scsi_command_size(cmd->t_task_cdb), GFP_KERNEL);
 if (!pt) {
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }
 cmd->priv = pt;

 memcpy(pt->pscsi_cdb, cmd->t_task_cdb,
  scsi_command_size(cmd->t_task_cdb));

 if (!sgl) {
  req = blk_get_request(pdv->pdv_sd->request_queue,
    (data_direction == DMA_TO_DEVICE),
    GFP_KERNEL);
  if (!req || IS_ERR(req)) {
   pr_err("PSCSI: blk_get_request() failed: %ld\n",
     req ? IS_ERR(req) : -ENOMEM);
   ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
   goto fail;
  }
 } else {
  BUG_ON(!cmd->data_length);

  ret = pscsi_map_sg(cmd, sgl, sgl_nents, data_direction, &hbio);
  if (ret)
   goto fail;

  req = blk_make_request(pdv->pdv_sd->request_queue, hbio,
           GFP_KERNEL);
  if (IS_ERR(req)) {
   pr_err("pSCSI: blk_make_request() failed\n");
   ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
   goto fail_free_bio;
  }
 }

 req->cmd_type = REQ_TYPE_BLOCK_PC;
 req->end_io = pscsi_req_done;
 req->end_io_data = cmd;
 req->cmd_len = scsi_command_size(pt->pscsi_cdb);
 req->cmd = &pt->pscsi_cdb[0];
 req->sense = &pt->pscsi_sense[0];
 req->sense_len = 0;
 if (pdv->pdv_sd->type == TYPE_DISK)
  req->timeout = PS_TIMEOUT_DISK;
 else
  req->timeout = PS_TIMEOUT_OTHER;
 req->retries = PS_RETRY;

 blk_execute_rq_nowait(pdv->pdv_sd->request_queue, ((void*)0), req,
   (cmd->sam_task_attr == MSG_HEAD_TAG),
   pscsi_req_done);

 return 0;

fail_free_bio:
 while (hbio) {
  struct bio *bio = hbio;
  hbio = hbio->bi_next;
  bio_endio(bio, 0);
 }
 ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
fail:
 kfree(pt);
 return ret;
}
