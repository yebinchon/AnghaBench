
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int DT_GREATERTHAN ;
 int DT_LESSTHAN ;

__attribute__((used)) static int
dt_aggregate_countcmp(int64_t *lhs, int64_t *rhs)
{
 int64_t lvar = *lhs;
 int64_t rvar = *rhs;

 if (lvar < rvar)
  return (DT_LESSTHAN);

 if (lvar > rvar)
  return (DT_GREATERTHAN);

 return (0);
}
