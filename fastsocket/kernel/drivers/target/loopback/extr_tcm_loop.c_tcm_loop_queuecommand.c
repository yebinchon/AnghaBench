
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcm_loop_cmd {int work; struct scsi_cmnd* sc; } ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int * cmnd; TYPE_2__* device; } ;
struct TYPE_4__ {int lun; int channel; int id; TYPE_1__* host; } ;
struct TYPE_3__ {int host_no; } ;


 int BUG_ON (int) ;
 int DID_ERROR ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct tcm_loop_cmd* kmem_cache_zalloc (int ,int ) ;
 int pr_debug (char*,int ,int ,int ,int ,int ,int ) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 void stub1 (struct scsi_cmnd*) ;
 int tcm_loop_cmd_cache ;
 int tcm_loop_submission_work ;
 int tcm_loop_workqueue ;

__attribute__((used)) static int tcm_loop_queuecommand(struct scsi_cmnd *sc, void (* done)(struct scsi_cmnd *))
{
 struct tcm_loop_cmd *tl_cmd;

 BUG_ON(!done);
 sc->scsi_done = done;

 pr_debug("tcm_loop_queuecommand() %d:%d:%d:%d got CDB: 0x%02x"
  " scsi_buf_len: %u\n", sc->device->host->host_no,
  sc->device->id, sc->device->channel, sc->device->lun,
  sc->cmnd[0], scsi_bufflen(sc));

 tl_cmd = kmem_cache_zalloc(tcm_loop_cmd_cache, GFP_ATOMIC);
 if (!tl_cmd) {
  pr_err("Unable to allocate struct tcm_loop_cmd\n");
  set_host_byte(sc, DID_ERROR);
  sc->scsi_done(sc);
  return 0;
 }

 tl_cmd->sc = sc;
 INIT_WORK(&tl_cmd->work, tcm_loop_submission_work);
 queue_work(tcm_loop_workqueue, &tl_cmd->work);
 return 0;
}
