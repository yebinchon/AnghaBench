
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flowi {int dummy; } ;
struct flow_cache_percpu {int hash_rnd; } ;
struct flow_cache {int dummy; } ;


 int flow_cache_hash_size (struct flow_cache*) ;
 int jhash2 (int*,int,int ) ;

__attribute__((used)) static u32 flow_hash_code(struct flow_cache *fc,
     struct flow_cache_percpu *fcp,
     struct flowi *key)
{
 u32 *k = (u32 *) key;

 return (jhash2(k, (sizeof(*key) / sizeof(u32)), fcp->hash_rnd)
  & (flow_cache_hash_size(fc) - 1));
}
