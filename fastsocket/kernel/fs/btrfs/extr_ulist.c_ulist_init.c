
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist {int nodes_alloced; int int_nodes; int nodes; scalar_t__ nnodes; } ;


 int ULIST_SIZE ;

void ulist_init(struct ulist *ulist)
{
 ulist->nnodes = 0;
 ulist->nodes = ulist->int_nodes;
 ulist->nodes_alloced = ULIST_SIZE;
}
