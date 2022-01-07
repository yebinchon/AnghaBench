
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dt_aggregate_valvarcmp (void const*,void const*) ;

__attribute__((used)) static int
dt_aggregate_valvarrevcmp(const void *lhs, const void *rhs)
{
 return (dt_aggregate_valvarcmp(rhs, lhs));
}
