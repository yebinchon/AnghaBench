
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u8 ;
struct TYPE_2__ {int state_hmask; } ;
struct net {TYPE_1__ xfrm; } ;
typedef int __be32 ;


 unsigned int __xfrm_spi_hash (int *,int ,int ,unsigned short,int ) ;

__attribute__((used)) static inline unsigned int
xfrm_spi_hash(struct net *net, xfrm_address_t *daddr, __be32 spi, u8 proto, unsigned short family)
{
 return __xfrm_spi_hash(daddr, spi, proto, family, net->xfrm.state_hmask);
}
