
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* a6; } ;
typedef TYPE_1__ xfrm_address_t ;


 unsigned int ntohl (int) ;

__attribute__((used)) static inline unsigned int __xfrm6_addr_hash(xfrm_address_t *addr)
{
 return ntohl(addr->a6[2] ^ addr->a6[3]);
}
