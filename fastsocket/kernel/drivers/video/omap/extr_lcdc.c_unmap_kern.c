
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vram_virt; } ;


 TYPE_1__ lcdc ;
 int vunmap (int ) ;

__attribute__((used)) static void unmap_kern(void)
{
 vunmap(lcdc.vram_virt);
}
