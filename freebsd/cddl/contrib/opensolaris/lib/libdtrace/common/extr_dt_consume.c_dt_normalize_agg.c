
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ dtrace_aggvarid_t ;
struct TYPE_5__ {scalar_t__ dtagd_nrecs; scalar_t__ dtagd_varid; } ;
typedef TYPE_1__ dtrace_aggdesc_t ;
struct TYPE_6__ {int dtada_normal; TYPE_1__* dtada_desc; } ;
typedef TYPE_2__ dtrace_aggdata_t ;
struct TYPE_7__ {scalar_t__ dtnd_id; int dtnd_normal; } ;
typedef TYPE_3__ dt_normal_t ;


 int DTRACE_AGGWALK_NEXT ;
 int DTRACE_AGGWALK_NORMALIZE ;

__attribute__((used)) static int
dt_normalize_agg(const dtrace_aggdata_t *aggdata, void *arg)
{
 dt_normal_t *normal = arg;
 dtrace_aggdesc_t *agg = aggdata->dtada_desc;
 dtrace_aggvarid_t id = normal->dtnd_id;

 if (agg->dtagd_nrecs == 0)
  return (DTRACE_AGGWALK_NEXT);

 if (agg->dtagd_varid != id)
  return (DTRACE_AGGWALK_NEXT);

 ((dtrace_aggdata_t *)aggdata)->dtada_normal = normal->dtnd_normal;
 return (DTRACE_AGGWALK_NORMALIZE);
}
