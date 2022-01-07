
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFRM6_TUNNEL_SPI_BYADDR_HSIZE ;
 int XFRM6_TUNNEL_SPI_BYSPI_HSIZE ;
 int hlist_empty (int *) ;
 int kmem_cache_destroy (int *) ;
 int * xfrm6_tunnel_spi_byaddr ;
 int * xfrm6_tunnel_spi_byspi ;
 int * xfrm6_tunnel_spi_kmem ;

__attribute__((used)) static void xfrm6_tunnel_spi_fini(void)
{
 int i;

 for (i = 0; i < XFRM6_TUNNEL_SPI_BYADDR_HSIZE; i++) {
  if (!hlist_empty(&xfrm6_tunnel_spi_byaddr[i]))
   return;
 }
 for (i = 0; i < XFRM6_TUNNEL_SPI_BYSPI_HSIZE; i++) {
  if (!hlist_empty(&xfrm6_tunnel_spi_byspi[i]))
   return;
 }
 kmem_cache_destroy(xfrm6_tunnel_spi_kmem);
 xfrm6_tunnel_spi_kmem = ((void*)0);
}
