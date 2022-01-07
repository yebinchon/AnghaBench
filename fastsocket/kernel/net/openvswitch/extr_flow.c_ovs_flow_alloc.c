
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow {int * sf_acts; int lock; } ;


 int ENOMEM ;
 struct sw_flow* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int flow_cache ;
 struct sw_flow* kmem_cache_alloc (int ,int ) ;
 int spin_lock_init (int *) ;

struct sw_flow *ovs_flow_alloc(void)
{
 struct sw_flow *flow;

 flow = kmem_cache_alloc(flow_cache, GFP_KERNEL);
 if (!flow)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&flow->lock);
 flow->sf_acts = ((void*)0);

 return flow;
}
