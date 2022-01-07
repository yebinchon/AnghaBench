
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_tmr_req {int tmr_list; int function; void* fabric_tmr_ptr; struct se_cmd* task_cmd; } ;
struct se_cmd {struct se_tmr_req* se_tmr_req; int se_cmd_flags; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int SCF_SCSI_TMR_CDB ;
 struct se_tmr_req* kzalloc (int,int ) ;
 int pr_err (char*) ;

int core_tmr_alloc_req(
 struct se_cmd *se_cmd,
 void *fabric_tmr_ptr,
 u8 function,
 gfp_t gfp_flags)
{
 struct se_tmr_req *tmr;

 tmr = kzalloc(sizeof(struct se_tmr_req), gfp_flags);
 if (!tmr) {
  pr_err("Unable to allocate struct se_tmr_req\n");
  return -ENOMEM;
 }

 se_cmd->se_cmd_flags |= SCF_SCSI_TMR_CDB;
 se_cmd->se_tmr_req = tmr;
 tmr->task_cmd = se_cmd;
 tmr->fabric_tmr_ptr = fabric_tmr_ptr;
 tmr->function = function;
 INIT_LIST_HEAD(&tmr->tmr_list);

 return 0;
}
