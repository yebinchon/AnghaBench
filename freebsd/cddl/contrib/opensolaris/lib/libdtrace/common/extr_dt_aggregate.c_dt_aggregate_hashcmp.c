
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dtagd_nrecs; } ;
typedef TYPE_2__ dtrace_aggdesc_t ;
struct TYPE_4__ {TYPE_2__* dtada_desc; } ;
struct TYPE_6__ {TYPE_1__ dtahe_data; } ;
typedef TYPE_3__ dt_ahashent_t ;


 int DT_GREATERTHAN ;
 int DT_LESSTHAN ;

__attribute__((used)) static int
dt_aggregate_hashcmp(const void *lhs, const void *rhs)
{
 dt_ahashent_t *lh = *((dt_ahashent_t **)lhs);
 dt_ahashent_t *rh = *((dt_ahashent_t **)rhs);
 dtrace_aggdesc_t *lagg = lh->dtahe_data.dtada_desc;
 dtrace_aggdesc_t *ragg = rh->dtahe_data.dtada_desc;

 if (lagg->dtagd_nrecs < ragg->dtagd_nrecs)
  return (DT_LESSTHAN);

 if (lagg->dtagd_nrecs > ragg->dtagd_nrecs)
  return (DT_GREATERTHAN);

 return (0);
}
