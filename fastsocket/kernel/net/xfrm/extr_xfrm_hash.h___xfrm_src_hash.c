
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;




 unsigned int __xfrm4_daddr_saddr_hash (int *,int *) ;
 unsigned int __xfrm6_daddr_saddr_hash (int *,int *) ;

__attribute__((used)) static inline unsigned __xfrm_src_hash(xfrm_address_t *daddr,
           xfrm_address_t *saddr,
           unsigned short family,
           unsigned int hmask)
{
 unsigned int h = family;
 switch (family) {
 case 129:
  h ^= __xfrm4_daddr_saddr_hash(daddr, saddr);
  break;
 case 128:
  h ^= __xfrm6_daddr_saddr_hash(daddr, saddr);
  break;
 };
 return (h ^ (h >> 16)) & hmask;
}
