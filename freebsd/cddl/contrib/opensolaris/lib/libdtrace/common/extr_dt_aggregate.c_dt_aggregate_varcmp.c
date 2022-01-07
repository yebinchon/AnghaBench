
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dtrace_aggvarid_t ;
typedef int dt_ahashent_t ;


 int DT_GREATERTHAN ;
 int DT_LESSTHAN ;
 scalar_t__ dt_aggregate_aggvarid (int *) ;

__attribute__((used)) static int
dt_aggregate_varcmp(const void *lhs, const void *rhs)
{
 dt_ahashent_t *lh = *((dt_ahashent_t **)lhs);
 dt_ahashent_t *rh = *((dt_ahashent_t **)rhs);
 dtrace_aggvarid_t lid, rid;

 lid = dt_aggregate_aggvarid(lh);
 rid = dt_aggregate_aggvarid(rh);

 if (lid < rid)
  return (DT_LESSTHAN);

 if (lid > rid)
  return (DT_GREATERTHAN);

 return (0);
}
