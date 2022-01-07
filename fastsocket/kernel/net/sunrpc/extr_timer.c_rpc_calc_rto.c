
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rtt {unsigned long timeo; int* srtt; int* sdrtt; } ;


 unsigned long RPC_RTO_MAX ;

unsigned long rpc_calc_rto(struct rpc_rtt *rt, unsigned timer)
{
 unsigned long res;

 if (timer-- == 0)
  return rt->timeo;

 res = ((rt->srtt[timer] + 7) >> 3) + rt->sdrtt[timer];
 if (res > RPC_RTO_MAX)
  res = RPC_RTO_MAX;

 return res;
}
