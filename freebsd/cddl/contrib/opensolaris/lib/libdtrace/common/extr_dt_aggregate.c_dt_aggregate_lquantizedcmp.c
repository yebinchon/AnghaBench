
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int DT_GREATERTHAN ;
 int DT_LESSTHAN ;
 long double dt_aggregate_lquantizedsum (scalar_t__*) ;
 scalar_t__ dt_aggregate_lquantizedzero (scalar_t__*) ;

__attribute__((used)) static int
dt_aggregate_lquantizedcmp(int64_t *lhs, int64_t *rhs)
{
 long double lsum = dt_aggregate_lquantizedsum(lhs);
 long double rsum = dt_aggregate_lquantizedsum(rhs);
 int64_t lzero, rzero;

 if (lsum < rsum)
  return (DT_LESSTHAN);

 if (lsum > rsum)
  return (DT_GREATERTHAN);







 lzero = dt_aggregate_lquantizedzero(lhs);
 rzero = dt_aggregate_lquantizedzero(rhs);

 if (lzero < rzero)
  return (DT_LESSTHAN);

 if (lzero > rzero)
  return (DT_GREATERTHAN);

 return (0);
}
