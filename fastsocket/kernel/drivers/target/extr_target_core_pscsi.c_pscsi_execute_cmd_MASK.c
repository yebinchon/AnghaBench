#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct se_cmd {int data_direction; scalar_t__ sam_task_attr; int /*<<< orphan*/  data_length; int /*<<< orphan*/ * t_task_cdb; struct pscsi_plugin_task* priv; int /*<<< orphan*/  se_dev; int /*<<< orphan*/  t_data_nents; struct scatterlist* t_data_sg; } ;
struct scatterlist {int dummy; } ;
struct request {int /*<<< orphan*/  retries; int /*<<< orphan*/  timeout; scalar_t__ sense_len; int /*<<< orphan*/ * sense; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  cmd_len; struct se_cmd* end_io_data; int /*<<< orphan*/  end_io; int /*<<< orphan*/  cmd_type; } ;
struct pscsi_plugin_task {int /*<<< orphan*/ * pscsi_sense; int /*<<< orphan*/ * pscsi_cdb; } ;
struct pscsi_dev_virt {TYPE_1__* pdv_sd; } ;
struct bio {struct bio* bi_next; } ;
typedef  scalar_t__ sense_reason_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_TO_DEVICE ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ MSG_HEAD_TAG ; 
 struct pscsi_dev_virt* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_RETRY ; 
 int /*<<< orphan*/  PS_TIMEOUT_DISK ; 
 int /*<<< orphan*/  PS_TIMEOUT_OTHER ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 scalar_t__ TYPE_DISK ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ ) ; 
 struct request* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct request* FUNC6 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pscsi_plugin_task*) ; 
 struct pscsi_plugin_task* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (struct se_cmd*,struct scatterlist*,int /*<<< orphan*/ ,int,struct bio**) ; 
 int /*<<< orphan*/  pscsi_req_done ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static sense_reason_t
FUNC13(struct se_cmd *cmd)
{
	struct scatterlist *sgl = cmd->t_data_sg;
	u32 sgl_nents = cmd->t_data_nents;
	enum dma_data_direction data_direction = cmd->data_direction;
	struct pscsi_dev_virt *pdv = FUNC2(cmd->se_dev);
	struct pscsi_plugin_task *pt;
	struct request *req;
	struct bio *hbio;
	sense_reason_t ret;

	/*
	 * Dynamically alloc cdb space, since it may be larger than
	 * TCM_MAX_COMMAND_SIZE
	 */
	pt = FUNC8(sizeof(*pt) + FUNC12(cmd->t_task_cdb), GFP_KERNEL);
	if (!pt) {
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
	}
	cmd->priv = pt;

	FUNC9(pt->pscsi_cdb, cmd->t_task_cdb,
		FUNC12(cmd->t_task_cdb));

	if (!sgl) {
		req = FUNC5(pdv->pdv_sd->request_queue,
				(data_direction == DMA_TO_DEVICE),
				GFP_KERNEL);
		if (!req || FUNC1(req)) {
			FUNC10("PSCSI: blk_get_request() failed: %ld\n",
					req ? FUNC1(req) : -ENOMEM);
			ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
			goto fail;
		}
	} else {
		FUNC0(!cmd->data_length);

		ret = FUNC11(cmd, sgl, sgl_nents, data_direction, &hbio);
		if (ret)
			goto fail;

		req = FUNC6(pdv->pdv_sd->request_queue, hbio,
				       GFP_KERNEL);
		if (FUNC1(req)) {
			FUNC10("pSCSI: blk_make_request() failed\n");
			ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
			goto fail_free_bio;
		}
	}

	req->cmd_type = REQ_TYPE_BLOCK_PC;
	req->end_io = pscsi_req_done;
	req->end_io_data = cmd;
	req->cmd_len = FUNC12(pt->pscsi_cdb);
	req->cmd = &pt->pscsi_cdb[0];
	req->sense = &pt->pscsi_sense[0];
	req->sense_len = 0;
	if (pdv->pdv_sd->type == TYPE_DISK)
		req->timeout = PS_TIMEOUT_DISK;
	else
		req->timeout = PS_TIMEOUT_OTHER;
	req->retries = PS_RETRY;

	FUNC4(pdv->pdv_sd->request_queue, NULL, req,
			(cmd->sam_task_attr == MSG_HEAD_TAG),
			pscsi_req_done);

	return 0;

fail_free_bio:
	while (hbio) {
		struct bio *bio = hbio;
		hbio = hbio->bi_next;
		FUNC3(bio, 0);	/* XXX: should be error */
	}
	ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
fail:
	FUNC7(pt);
	return ret;
}