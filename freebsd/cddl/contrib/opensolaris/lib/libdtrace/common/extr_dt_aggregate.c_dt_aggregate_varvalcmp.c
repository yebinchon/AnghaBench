
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dt_aggregate_valkeycmp (void const*,void const*) ;
 int dt_aggregate_varcmp (void const*,void const*) ;

__attribute__((used)) static int
dt_aggregate_varvalcmp(const void *lhs, const void *rhs)
{
 int rval;

 if ((rval = dt_aggregate_varcmp(lhs, rhs)) != 0)
  return (rval);

 return (dt_aggregate_valkeycmp(lhs, rhs));
}
