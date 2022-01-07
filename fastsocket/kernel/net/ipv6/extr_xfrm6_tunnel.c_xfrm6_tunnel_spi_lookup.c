
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm6_tunnel_spi {int spi; } ;
typedef int __be32 ;


 struct xfrm6_tunnel_spi* __xfrm6_tunnel_spi_lookup (int *) ;
 int htonl (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int xfrm6_tunnel_spi_lock ;

__be32 xfrm6_tunnel_spi_lookup(xfrm_address_t *saddr)
{
 struct xfrm6_tunnel_spi *x6spi;
 u32 spi;

 read_lock_bh(&xfrm6_tunnel_spi_lock);
 x6spi = __xfrm6_tunnel_spi_lookup(saddr);
 spi = x6spi ? x6spi->spi : 0;
 read_unlock_bh(&xfrm6_tunnel_spi_lock);
 return htonl(spi);
}
