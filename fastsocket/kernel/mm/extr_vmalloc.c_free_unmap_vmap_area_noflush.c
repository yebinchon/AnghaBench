
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;


 int free_vmap_area_noflush (struct vmap_area*) ;
 int unmap_vmap_area (struct vmap_area*) ;

__attribute__((used)) static void free_unmap_vmap_area_noflush(struct vmap_area *va)
{
 unmap_vmap_area(va);
 free_vmap_area_noflush(va);
}
