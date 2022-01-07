
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm6_tunnel_spi {int dummy; } ;


 int ENOMEM ;
 int INIT_HLIST_HEAD (int *) ;
 int SLAB_HWCACHE_ALIGN ;
 int XFRM6_TUNNEL_SPI_BYADDR_HSIZE ;
 int XFRM6_TUNNEL_SPI_BYSPI_HSIZE ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 scalar_t__ xfrm6_tunnel_spi ;
 int * xfrm6_tunnel_spi_byaddr ;
 int * xfrm6_tunnel_spi_byspi ;
 int xfrm6_tunnel_spi_kmem ;

__attribute__((used)) static int xfrm6_tunnel_spi_init(void)
{
 int i;

 xfrm6_tunnel_spi = 0;
 xfrm6_tunnel_spi_kmem = kmem_cache_create("xfrm6_tunnel_spi",
        sizeof(struct xfrm6_tunnel_spi),
        0, SLAB_HWCACHE_ALIGN,
        ((void*)0));
 if (!xfrm6_tunnel_spi_kmem)
  return -ENOMEM;

 for (i = 0; i < XFRM6_TUNNEL_SPI_BYADDR_HSIZE; i++)
  INIT_HLIST_HEAD(&xfrm6_tunnel_spi_byaddr[i]);
 for (i = 0; i < XFRM6_TUNNEL_SPI_BYSPI_HSIZE; i++)
  INIT_HLIST_HEAD(&xfrm6_tunnel_spi_byspi[i]);
 return 0;
}
