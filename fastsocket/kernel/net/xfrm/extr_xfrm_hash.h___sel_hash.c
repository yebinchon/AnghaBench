
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct xfrm_selector {int prefixlen_d; int prefixlen_s; int saddr; int daddr; } ;




 unsigned int __xfrm4_daddr_saddr_hash (int *,int *) ;
 unsigned int __xfrm6_daddr_saddr_hash (int *,int *) ;

__attribute__((used)) static inline unsigned int __sel_hash(struct xfrm_selector *sel, unsigned short family, unsigned int hmask)
{
 xfrm_address_t *daddr = &sel->daddr;
 xfrm_address_t *saddr = &sel->saddr;
 unsigned int h = 0;

 switch (family) {
 case 129:
  if (sel->prefixlen_d != 32 ||
      sel->prefixlen_s != 32)
   return hmask + 1;

  h = __xfrm4_daddr_saddr_hash(daddr, saddr);
  break;

 case 128:
  if (sel->prefixlen_d != 128 ||
      sel->prefixlen_s != 128)
   return hmask + 1;

  h = __xfrm6_daddr_saddr_hash(daddr, saddr);
  break;
 };
 h ^= (h >> 16);
 return h & hmask;
}
