
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;


 int BUG_ON (int) ;
 struct vmap_area* find_vmap_area (unsigned long) ;
 int free_unmap_vmap_area (struct vmap_area*) ;

__attribute__((used)) static void free_unmap_vmap_area_addr(unsigned long addr)
{
 struct vmap_area *va;

 va = find_vmap_area(addr);
 BUG_ON(!va);
 free_unmap_vmap_area(va);
}
