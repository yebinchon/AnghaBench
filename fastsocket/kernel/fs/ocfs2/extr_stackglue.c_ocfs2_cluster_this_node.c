
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* this_node ) (unsigned int*) ;} ;


 TYPE_2__* active_stack ;
 int stub1 (unsigned int*) ;

int ocfs2_cluster_this_node(unsigned int *node)
{
 return active_stack->sp_ops->this_node(node);
}
