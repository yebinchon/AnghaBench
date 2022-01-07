
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ dtrace_aggvarid_t ;
struct TYPE_6__ {int dtagd_flags; scalar_t__ dtagd_nrecs; scalar_t__ dtagd_varid; } ;
typedef TYPE_1__ dtrace_aggdesc_t ;
struct TYPE_7__ {TYPE_1__* dtada_desc; } ;
typedef TYPE_2__ dtrace_aggdata_t ;
struct TYPE_8__ {scalar_t__ dtpa_id; scalar_t__ dtpa_allunprint; } ;
typedef TYPE_3__ dt_print_aggdata_t ;


 int DTRACE_AGD_PRINTED ;
 int dt_print_aggs (TYPE_2__ const**,int,void*) ;

int
dt_print_agg(const dtrace_aggdata_t *aggdata, void *arg)
{
 dt_print_aggdata_t *pd = arg;
 dtrace_aggdesc_t *agg = aggdata->dtada_desc;
 dtrace_aggvarid_t aggvarid = pd->dtpa_id;

 if (pd->dtpa_allunprint) {
  if (agg->dtagd_flags & DTRACE_AGD_PRINTED)
   return (0);
 } else {






  if (agg->dtagd_nrecs == 0)
   return (0);

  if (aggvarid != agg->dtagd_varid)
   return (0);
 }

 return (dt_print_aggs(&aggdata, 1, arg));
}
