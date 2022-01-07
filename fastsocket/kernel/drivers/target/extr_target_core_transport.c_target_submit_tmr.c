
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_session {struct se_portal_group* se_tpg; } ;
struct se_portal_group {int se_tpg_tfo; } ;
struct se_cmd {int work; TYPE_1__* se_tmr_req; } ;
typedef int gfp_t ;
struct TYPE_2__ {unsigned int ref_task_tag; } ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int MSG_SIMPLE_TAG ;
 int TARGET_SCF_ACK_KREF ;
 unsigned char TMR_ABORT_TASK ;
 int core_tmr_alloc_req (struct se_cmd*,void*,unsigned char,int ) ;
 int core_tmr_release_req (TYPE_1__*) ;
 int schedule_work (int *) ;
 int target_complete_tmr_failure ;
 int target_get_sess_cmd (struct se_session*,struct se_cmd*,int) ;
 int transport_generic_handle_tmr (struct se_cmd*) ;
 int transport_init_se_cmd (struct se_cmd*,int ,struct se_session*,int ,int ,int ,unsigned char*) ;
 int transport_lookup_tmr_lun (struct se_cmd*,int ) ;

int target_submit_tmr(struct se_cmd *se_cmd, struct se_session *se_sess,
  unsigned char *sense, u32 unpacked_lun,
  void *fabric_tmr_ptr, unsigned char tm_type,
  gfp_t gfp, unsigned int tag, int flags)
{
 struct se_portal_group *se_tpg;
 int ret;

 se_tpg = se_sess->se_tpg;
 BUG_ON(!se_tpg);

 transport_init_se_cmd(se_cmd, se_tpg->se_tpg_tfo, se_sess,
         0, DMA_NONE, MSG_SIMPLE_TAG, sense);




 ret = core_tmr_alloc_req(se_cmd, fabric_tmr_ptr, tm_type, gfp);
 if (ret < 0)
  return -ENOMEM;

 if (tm_type == TMR_ABORT_TASK)
  se_cmd->se_tmr_req->ref_task_tag = tag;


 ret = target_get_sess_cmd(se_sess, se_cmd, (flags & TARGET_SCF_ACK_KREF));
 if (ret) {
  core_tmr_release_req(se_cmd->se_tmr_req);
  return ret;
 }

 ret = transport_lookup_tmr_lun(se_cmd, unpacked_lun);
 if (ret) {




  INIT_WORK(&se_cmd->work, target_complete_tmr_failure);
  schedule_work(&se_cmd->work);
  return 0;
 }
 transport_generic_handle_tmr(se_cmd);
 return 0;
}
