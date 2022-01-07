
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dids_list; } ;
typedef TYPE_1__ dt_idstack_t ;
typedef int dt_idhash_t ;


 int assert (int) ;
 int dt_list_delete (int *,int *) ;
 int * dt_list_prev (int *) ;

void
dt_idstack_pop(dt_idstack_t *sp, dt_idhash_t *dhp)
{
 assert(dt_list_prev(&sp->dids_list) == dhp);
 dt_list_delete(&sp->dids_list, dhp);
}
