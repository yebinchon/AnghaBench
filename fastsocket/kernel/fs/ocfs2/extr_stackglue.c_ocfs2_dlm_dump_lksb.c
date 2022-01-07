
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ocfs2_dlm_lksb {int dummy; } ocfs2_dlm_lksb ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* dump_lksb ) (union ocfs2_dlm_lksb*) ;} ;


 TYPE_2__* active_stack ;
 int stub1 (union ocfs2_dlm_lksb*) ;

void ocfs2_dlm_dump_lksb(union ocfs2_dlm_lksb *lksb)
{
 active_stack->sp_ops->dump_lksb(lksb);
}
