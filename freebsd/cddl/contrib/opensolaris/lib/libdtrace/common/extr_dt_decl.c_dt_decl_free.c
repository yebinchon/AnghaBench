
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dd_node; struct TYPE_4__* dd_name; struct TYPE_4__* dd_next; } ;
typedef TYPE_1__ dt_decl_t ;


 int dt_node_list_free (int *) ;
 int free (TYPE_1__*) ;

void
dt_decl_free(dt_decl_t *ddp)
{
 dt_decl_t *ndp;

 for (; ddp != ((void*)0); ddp = ndp) {
  ndp = ddp->dd_next;
  free(ddp->dd_name);
  dt_node_list_free(&ddp->dd_node);
  free(ddp);
 }
}
