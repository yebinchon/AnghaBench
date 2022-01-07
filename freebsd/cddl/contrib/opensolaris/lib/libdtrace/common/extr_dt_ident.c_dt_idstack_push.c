
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dids_list; } ;
typedef TYPE_1__ dt_idstack_t ;
typedef int dt_idhash_t ;


 int dt_list_append (int *,int *) ;

void
dt_idstack_push(dt_idstack_t *sp, dt_idhash_t *dhp)
{
 dt_list_append(&sp->dids_list, dhp);
}
