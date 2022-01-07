
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_pool {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ cpu_id ;
 scalar_t__ cpu_online (scalar_t__) ;
 scalar_t__ nr_cpu_ids ;
 struct skb_pool* per_cpu_ptr (int ,scalar_t__) ;
 int skb_pools ;

__attribute__((used)) static struct skb_pool *skb_pool_get_online(loff_t *pos)
{
 struct skb_pool *rc = ((void*)0);

 while (*pos < nr_cpu_ids)
  if (cpu_online(*pos)) {
   rc = per_cpu_ptr(skb_pools, *pos);
   break;
  } else
   ++*pos;
 cpu_id = *pos;

 return rc;
}
