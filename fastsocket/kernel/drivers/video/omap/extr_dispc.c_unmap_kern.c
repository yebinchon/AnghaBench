
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_mem_region {int vaddr; } ;


 int vunmap (int ) ;

__attribute__((used)) static void unmap_kern(struct omapfb_mem_region *region)
{
 vunmap(region->vaddr);
}
