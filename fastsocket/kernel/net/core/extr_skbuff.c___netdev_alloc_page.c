
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;


 int NUMA_NO_NODE ;
 struct page* alloc_pages_node (int ,int ,int ) ;

struct page *__netdev_alloc_page(struct net_device *dev, gfp_t gfp_mask)
{
 return alloc_pages_node(NUMA_NO_NODE, gfp_mask, 0);
}
