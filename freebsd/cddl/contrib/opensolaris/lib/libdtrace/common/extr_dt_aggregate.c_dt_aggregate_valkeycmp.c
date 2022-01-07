
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dt_aggregate_keycmp (void const*,void const*) ;
 int dt_aggregate_valcmp (void const*,void const*) ;

__attribute__((used)) static int
dt_aggregate_valkeycmp(const void *lhs, const void *rhs)
{
 int rval;

 if ((rval = dt_aggregate_valcmp(lhs, rhs)) != 0)
  return (rval);






 return (dt_aggregate_keycmp(lhs, rhs));
}
