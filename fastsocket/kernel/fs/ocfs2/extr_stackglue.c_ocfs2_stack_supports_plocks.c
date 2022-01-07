
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {scalar_t__ plock; } ;


 TYPE_2__* active_stack ;

int ocfs2_stack_supports_plocks(void)
{
 return active_stack && active_stack->sp_ops->plock;
}
