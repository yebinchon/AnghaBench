
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int va_end; int va_start; } ;


 int flush_cache_vunmap (int ,int ) ;
 int free_unmap_vmap_area_noflush (struct vmap_area*) ;

__attribute__((used)) static void free_unmap_vmap_area(struct vmap_area *va)
{
 flush_cache_vunmap(va->va_start, va->va_end);
 free_unmap_vmap_area_noflush(va);
}
