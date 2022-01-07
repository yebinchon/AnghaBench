
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ a4; } ;
typedef TYPE_1__ xfrm_address_t ;


 unsigned int ntohl (scalar_t__) ;

__attribute__((used)) static inline unsigned int __xfrm4_daddr_saddr_hash(xfrm_address_t *daddr, xfrm_address_t *saddr)
{
 return ntohl(daddr->a4 + saddr->a4);
}
