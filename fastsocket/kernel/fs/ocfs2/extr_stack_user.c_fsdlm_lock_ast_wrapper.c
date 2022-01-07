
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlm_lksb {int sb_status; } ;
struct TYPE_4__ {TYPE_1__* sp_proto; } ;
struct TYPE_3__ {int (* lp_lock_ast ) (void*) ;int (* lp_unlock_ast ) (void*,int ) ;} ;


 int BUG_ON (int ) ;
 int DLM_ECANCEL ;
 int DLM_EUNLOCK ;
 struct dlm_lksb* fsdlm_astarg_to_lksb (void*) ;
 TYPE_2__ ocfs2_user_plugin ;
 int stub1 (void*,int ) ;
 int stub2 (void*) ;

__attribute__((used)) static void fsdlm_lock_ast_wrapper(void *astarg)
{
 struct dlm_lksb *lksb = fsdlm_astarg_to_lksb(astarg);
 int status = lksb->sb_status;

 BUG_ON(ocfs2_user_plugin.sp_proto == ((void*)0));
 if (status == -DLM_EUNLOCK || status == -DLM_ECANCEL)
  ocfs2_user_plugin.sp_proto->lp_unlock_ast(astarg, 0);
 else
  ocfs2_user_plugin.sp_proto->lp_lock_ast(astarg);
}
