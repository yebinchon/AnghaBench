
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct tc_u32_sel {int hmask; } ;
typedef int __be32 ;


 unsigned int ntohl (int) ;

__attribute__((used)) static __inline__ unsigned u32_hash_fold(__be32 key, struct tc_u32_sel *sel, u8 fshift)
{
 unsigned h = ntohl(key & sel->hmask)>>fshift;

 return h;
}
