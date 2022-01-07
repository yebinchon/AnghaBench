
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sp_proto; } ;
struct TYPE_3__ {int (* lp_lock_ast ) (void*) ;} ;


 int BUG_ON (int ) ;
 TYPE_2__ o2cb_stack ;
 int stub1 (void*) ;

__attribute__((used)) static void o2dlm_lock_ast_wrapper(void *astarg)
{
 BUG_ON(o2cb_stack.sp_proto == ((void*)0));

 o2cb_stack.sp_proto->lp_lock_ast(astarg);
}
