
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int int64_t ;


 int DT_GREATERTHAN ;
 int DT_LESSTHAN ;
 scalar_t__ dt_stddev (scalar_t__*,int) ;

__attribute__((used)) static int
dt_aggregate_stddevcmp(int64_t *lhs, int64_t *rhs)
{
 uint64_t lsd = dt_stddev((uint64_t *)lhs, 1);
 uint64_t rsd = dt_stddev((uint64_t *)rhs, 1);

 if (lsd < rsd)
  return (DT_LESSTHAN);

 if (lsd > rsd)
  return (DT_GREATERTHAN);

 return (0);
}
