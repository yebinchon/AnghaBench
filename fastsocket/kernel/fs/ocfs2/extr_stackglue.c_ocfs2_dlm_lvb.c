
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ocfs2_dlm_lksb {int dummy; } ocfs2_dlm_lksb ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {void* (* lock_lvb ) (union ocfs2_dlm_lksb*) ;} ;


 TYPE_2__* active_stack ;
 void* stub1 (union ocfs2_dlm_lksb*) ;

void *ocfs2_dlm_lvb(union ocfs2_dlm_lksb *lksb)
{
 return active_stack->sp_ops->lock_lvb(lksb);
}
