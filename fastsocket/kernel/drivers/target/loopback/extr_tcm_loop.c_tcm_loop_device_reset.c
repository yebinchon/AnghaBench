
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_portal_group {int se_tpg_tfo; } ;
struct tcm_loop_tpg {struct se_portal_group tl_se_tpg; } ;
struct tcm_loop_tmr {int tmr_complete; int tl_tmr_wait; } ;
struct tcm_loop_nexus {struct se_session* se_sess; } ;
struct tcm_loop_hba {struct tcm_loop_tpg* tl_hba_tpgs; struct tcm_loop_nexus* tl_nexus; } ;
struct se_cmd {TYPE_2__* se_tmr_req; } ;
struct tcm_loop_cmd {int * tl_sense_buf; struct se_cmd tl_se_cmd; } ;
struct se_session {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {scalar_t__ response; } ;
struct TYPE_3__ {size_t id; int lun; int host; } ;


 int DMA_NONE ;
 int FAILED ;
 int GFP_KERNEL ;
 int MSG_SIMPLE_TAG ;
 int SUCCESS ;
 scalar_t__ TMR_FUNCTION_COMPLETE ;
 int TMR_LUN_RESET ;
 int atomic_read (int *) ;
 int core_tmr_alloc_req (struct se_cmd*,struct tcm_loop_tmr*,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct tcm_loop_tmr*) ;
 int kmem_cache_free (int ,struct tcm_loop_cmd*) ;
 struct tcm_loop_cmd* kmem_cache_zalloc (int ,int ) ;
 struct tcm_loop_tmr* kzalloc (int,int ) ;
 int pr_err (char*) ;
 scalar_t__ shost_priv (int ) ;
 int tcm_loop_cmd_cache ;
 int transport_generic_free_cmd (struct se_cmd*,int) ;
 int transport_generic_handle_tmr (struct se_cmd*) ;
 int transport_init_se_cmd (struct se_cmd*,int ,struct se_session*,int ,int ,int ,int *) ;
 scalar_t__ transport_lookup_tmr_lun (struct se_cmd*,int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int tcm_loop_device_reset(struct scsi_cmnd *sc)
{
 struct se_cmd *se_cmd = ((void*)0);
 struct se_portal_group *se_tpg;
 struct se_session *se_sess;
 struct tcm_loop_cmd *tl_cmd = ((void*)0);
 struct tcm_loop_hba *tl_hba;
 struct tcm_loop_nexus *tl_nexus;
 struct tcm_loop_tmr *tl_tmr = ((void*)0);
 struct tcm_loop_tpg *tl_tpg;
 int ret = FAILED, rc;



 tl_hba = *(struct tcm_loop_hba **)shost_priv(sc->device->host);



 tl_nexus = tl_hba->tl_nexus;
 if (!tl_nexus) {
  pr_err("Unable to perform device reset without"
    " active I_T Nexus\n");
  return FAILED;
 }
 se_sess = tl_nexus->se_sess;



 tl_tpg = &tl_hba->tl_hba_tpgs[sc->device->id];
 se_tpg = &tl_tpg->tl_se_tpg;

 tl_cmd = kmem_cache_zalloc(tcm_loop_cmd_cache, GFP_KERNEL);
 if (!tl_cmd) {
  pr_err("Unable to allocate memory for tl_cmd\n");
  return FAILED;
 }

 tl_tmr = kzalloc(sizeof(struct tcm_loop_tmr), GFP_KERNEL);
 if (!tl_tmr) {
  pr_err("Unable to allocate memory for tl_tmr\n");
  goto release;
 }
 init_waitqueue_head(&tl_tmr->tl_tmr_wait);

 se_cmd = &tl_cmd->tl_se_cmd;



 transport_init_se_cmd(se_cmd, se_tpg->se_tpg_tfo, se_sess, 0,
    DMA_NONE, MSG_SIMPLE_TAG,
    &tl_cmd->tl_sense_buf[0]);

 rc = core_tmr_alloc_req(se_cmd, tl_tmr, TMR_LUN_RESET, GFP_KERNEL);
 if (rc < 0)
  goto release;



 if (transport_lookup_tmr_lun(se_cmd, sc->device->lun) < 0)
  goto release;




 transport_generic_handle_tmr(se_cmd);
 wait_event(tl_tmr->tl_tmr_wait, atomic_read(&tl_tmr->tmr_complete));




 ret = (se_cmd->se_tmr_req->response == TMR_FUNCTION_COMPLETE) ?
  SUCCESS : FAILED;
release:
 if (se_cmd)
  transport_generic_free_cmd(se_cmd, 1);
 else
  kmem_cache_free(tcm_loop_cmd_cache, tl_cmd);
 kfree(tl_tmr);
 return ret;
}
