
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int va_end; int va_start; int flags; } ;


 int PAGE_SHIFT ;
 int VM_LAZY_FREE ;
 int atomic_add (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ lazy_max_pages () ;
 int try_purge_vmap_area_lazy () ;
 scalar_t__ unlikely (int) ;
 int vmap_lazy_nr ;

__attribute__((used)) static void free_vmap_area_noflush(struct vmap_area *va)
{
 va->flags |= VM_LAZY_FREE;
 atomic_add((va->va_end - va->va_start) >> PAGE_SHIFT, &vmap_lazy_nr);
 if (unlikely(atomic_read(&vmap_lazy_nr) > lazy_max_pages()))
  try_purge_vmap_area_lazy();
}
