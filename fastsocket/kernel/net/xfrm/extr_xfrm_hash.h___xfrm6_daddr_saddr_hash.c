
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* a6; } ;
typedef TYPE_1__ xfrm_address_t ;


 unsigned int ntohl (int) ;

__attribute__((used)) static inline unsigned int __xfrm6_daddr_saddr_hash(xfrm_address_t *daddr, xfrm_address_t *saddr)
{
 return ntohl(daddr->a6[2] ^ daddr->a6[3] ^
       saddr->a6[2] ^ saddr->a6[3]);
}
