
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fbmem_allocated; } ;


 int free_fbmem () ;
 TYPE_1__ lcdc ;
 int unmap_kern () ;

__attribute__((used)) static void cleanup_fbmem(void)
{
 if (lcdc.fbmem_allocated)
  free_fbmem();
 else
  unmap_kern();
}
