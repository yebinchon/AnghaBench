
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
struct TYPE_4__ {TYPE_1__* sp_proto; } ;
struct TYPE_3__ {int (* lp_unlock_ast ) (void*,int) ;} ;


 int BUG_ON (int ) ;
 int DLM_CANCELGRANT ;
 int dlm_status_to_errno (int) ;
 TYPE_2__ o2cb_stack ;
 int stub1 (void*,int) ;

__attribute__((used)) static void o2dlm_unlock_ast_wrapper(void *astarg, enum dlm_status status)
{
 int error = dlm_status_to_errno(status);

 BUG_ON(o2cb_stack.sp_proto == ((void*)0));
 if (status == DLM_CANCELGRANT)
  return;

 o2cb_stack.sp_proto->lp_unlock_ast(astarg, error);
}
