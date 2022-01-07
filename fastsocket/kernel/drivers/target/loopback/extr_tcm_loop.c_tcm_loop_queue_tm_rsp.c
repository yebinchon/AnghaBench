
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm_loop_tmr {int tl_tmr_wait; int tmr_complete; } ;
struct se_tmr_req {struct tcm_loop_tmr* fabric_tmr_ptr; } ;
struct se_cmd {struct se_tmr_req* se_tmr_req; } ;


 int atomic_set (int *,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int tcm_loop_queue_tm_rsp(struct se_cmd *se_cmd)
{
 struct se_tmr_req *se_tmr = se_cmd->se_tmr_req;
 struct tcm_loop_tmr *tl_tmr = se_tmr->fabric_tmr_ptr;




 atomic_set(&tl_tmr->tmr_complete, 1);
 wake_up(&tl_tmr->tl_tmr_wait);
 return 0;
}
