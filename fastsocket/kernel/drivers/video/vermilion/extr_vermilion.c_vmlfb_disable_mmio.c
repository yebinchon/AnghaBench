
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_par {int vdc_mem_size; int vdc_mem_base; int vdc_mem; int gpu_mem_size; int gpu_mem_base; int gpu_mem; } ;


 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void vmlfb_disable_mmio(struct vml_par *par)
{
 iounmap(par->gpu_mem);
 release_mem_region(par->gpu_mem_base, par->gpu_mem_size);
 iounmap(par->vdc_mem);
 release_mem_region(par->vdc_mem_base, par->vdc_mem_size);
}
