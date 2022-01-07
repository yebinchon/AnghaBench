
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;


 int __free_vmap_area (struct vmap_area*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmap_area_lock ;

__attribute__((used)) static void free_vmap_area(struct vmap_area *va)
{
 spin_lock(&vmap_area_lock);
 __free_vmap_area(va);
 spin_unlock(&vmap_area_lock);
}
