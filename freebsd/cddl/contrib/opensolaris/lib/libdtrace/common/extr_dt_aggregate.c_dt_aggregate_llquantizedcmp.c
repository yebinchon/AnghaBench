
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int DT_GREATERTHAN ;
 int DT_LESSTHAN ;
 long double dt_aggregate_llquantizedsum (scalar_t__*) ;

__attribute__((used)) static int
dt_aggregate_llquantizedcmp(int64_t *lhs, int64_t *rhs)
{
 long double lsum = dt_aggregate_llquantizedsum(lhs);
 long double rsum = dt_aggregate_llquantizedsum(rhs);
 int64_t lzero, rzero;

 if (lsum < rsum)
  return (DT_LESSTHAN);

 if (lsum > rsum)
  return (DT_GREATERTHAN);






 lzero = lhs[1];
 rzero = rhs[1];

 if (lzero < rzero)
  return (DT_LESSTHAN);

 if (lzero > rzero)
  return (DT_GREATERTHAN);

 return (0);
}
