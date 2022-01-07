
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sp_proto; } ;
struct TYPE_3__ {int (* lp_blocking_ast ) (void*,int) ;} ;


 int BUG_ON (int ) ;
 TYPE_2__ ocfs2_user_plugin ;
 int stub1 (void*,int) ;

__attribute__((used)) static void fsdlm_blocking_ast_wrapper(void *astarg, int level)
{
 BUG_ON(ocfs2_user_plugin.sp_proto == ((void*)0));

 ocfs2_user_plugin.sp_proto->lp_blocking_ast(astarg, level);
}
