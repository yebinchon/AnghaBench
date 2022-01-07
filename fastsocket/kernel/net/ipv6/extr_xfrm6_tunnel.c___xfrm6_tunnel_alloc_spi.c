
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef scalar_t__ u32 ;
struct xfrm6_tunnel_spi {int list_byaddr; int list_byspi; int refcnt; scalar_t__ spi; int addr; } ;


 int GFP_ATOMIC ;
 scalar_t__ XFRM6_TUNNEL_SPI_MAX ;
 scalar_t__ XFRM6_TUNNEL_SPI_MIN ;
 int __xfrm6_tunnel_spi_check (scalar_t__) ;
 int atomic_set (int *,int) ;
 int hlist_add_head (int *,int *) ;
 struct xfrm6_tunnel_spi* kmem_cache_alloc (int ,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ xfrm6_tunnel_spi ;
 int * xfrm6_tunnel_spi_byaddr ;
 int * xfrm6_tunnel_spi_byspi ;
 int xfrm6_tunnel_spi_hash_byaddr (int *) ;
 int xfrm6_tunnel_spi_kmem ;

__attribute__((used)) static u32 __xfrm6_tunnel_alloc_spi(xfrm_address_t *saddr)
{
 u32 spi;
 struct xfrm6_tunnel_spi *x6spi;
 int index;

 if (xfrm6_tunnel_spi < XFRM6_TUNNEL_SPI_MIN ||
     xfrm6_tunnel_spi >= XFRM6_TUNNEL_SPI_MAX)
  xfrm6_tunnel_spi = XFRM6_TUNNEL_SPI_MIN;
 else
  xfrm6_tunnel_spi++;

 for (spi = xfrm6_tunnel_spi; spi <= XFRM6_TUNNEL_SPI_MAX; spi++) {
  index = __xfrm6_tunnel_spi_check(spi);
  if (index >= 0)
   goto alloc_spi;
 }
 for (spi = XFRM6_TUNNEL_SPI_MIN; spi < xfrm6_tunnel_spi; spi++) {
  index = __xfrm6_tunnel_spi_check(spi);
  if (index >= 0)
   goto alloc_spi;
 }
 spi = 0;
 goto out;
alloc_spi:
 xfrm6_tunnel_spi = spi;
 x6spi = kmem_cache_alloc(xfrm6_tunnel_spi_kmem, GFP_ATOMIC);
 if (!x6spi)
  goto out;

 memcpy(&x6spi->addr, saddr, sizeof(x6spi->addr));
 x6spi->spi = spi;
 atomic_set(&x6spi->refcnt, 1);

 hlist_add_head(&x6spi->list_byspi, &xfrm6_tunnel_spi_byspi[index]);

 index = xfrm6_tunnel_spi_hash_byaddr(saddr);
 hlist_add_head(&x6spi->list_byaddr, &xfrm6_tunnel_spi_byaddr[index]);
out:
 return spi;
}
