
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flow_cache_percpu {scalar_t__ hash_rnd_recalc; int hash_rnd; } ;
struct flow_cache {int dummy; } ;


 int __flow_cache_shrink (struct flow_cache*,struct flow_cache_percpu*,int ) ;
 int get_random_bytes (int *,int) ;

__attribute__((used)) static void flow_new_hash_rnd(struct flow_cache *fc,
         struct flow_cache_percpu *fcp)
{
 get_random_bytes(&fcp->hash_rnd, sizeof(u32));
 fcp->hash_rnd_recalc = 0;
 __flow_cache_shrink(fc, fcp, 0);
}
