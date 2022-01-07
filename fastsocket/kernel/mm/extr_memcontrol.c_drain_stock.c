
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memcg_stock_pcp {int charge; struct mem_cgroup* cached; } ;
struct mem_cgroup {int memsw; int res; } ;


 scalar_t__ do_swap_account ;
 int res_counter_uncharge (int *,int ) ;

__attribute__((used)) static void drain_stock(struct memcg_stock_pcp *stock)
{
 struct mem_cgroup *old = stock->cached;

 if (stock->charge) {
  res_counter_uncharge(&old->res, stock->charge);
  if (do_swap_account)
   res_counter_uncharge(&old->memsw, stock->charge);
 }
 stock->cached = ((void*)0);
 stock->charge = 0;
}
