
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int size; } ;
struct xt_hashlimit_htable {TYPE_1__ cfg; int rnd; } ;
struct dsthash_dst {int dummy; } ;


 int jhash2 (int const*,int,int ) ;

__attribute__((used)) static u_int32_t
hash_dst(const struct xt_hashlimit_htable *ht, const struct dsthash_dst *dst)
{
 u_int32_t hash = jhash2((const u32 *)dst,
    sizeof(*dst)/sizeof(u32),
    ht->rnd);






 return ((u64)hash * ht->cfg.size) >> 32;
}
