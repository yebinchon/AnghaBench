
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_7__ {int dt_nprovs; TYPE_2__** dt_provs; int dt_provlist; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_8__ {struct TYPE_8__* pv_next; } ;
typedef TYPE_2__ dt_provider_t ;


 int dt_list_append (int *,TYPE_2__*) ;

__attribute__((used)) static dt_provider_t *
dt_provider_insert(dtrace_hdl_t *dtp, dt_provider_t *pvp, uint_t h)
{
 dt_list_append(&dtp->dt_provlist, pvp);

 pvp->pv_next = dtp->dt_provs[h];
 dtp->dt_provs[h] = pvp;
 dtp->dt_nprovs++;

 return (pvp);
}
