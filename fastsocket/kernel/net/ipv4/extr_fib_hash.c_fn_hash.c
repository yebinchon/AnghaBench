
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fn_zone {int fz_order; } ;
typedef int __be32 ;


 int FZ_HASHMASK (struct fn_zone*) ;
 int ntohl (int ) ;

__attribute__((used)) static inline u32 fn_hash(__be32 key, struct fn_zone *fz)
{
 u32 h = ntohl(key)>>(32 - fz->fz_order);
 h ^= (h>>20);
 h ^= (h>>10);
 h ^= (h>>5);
 h &= FZ_HASHMASK(fz);
 return h;
}
