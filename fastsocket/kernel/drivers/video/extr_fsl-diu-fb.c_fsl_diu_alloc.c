
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 int GFP_DMA ;
 int __GFP_ZERO ;
 void* alloc_pages_exact (size_t,int) ;
 int pr_debug (char*,void*,...) ;
 scalar_t__ virt_to_phys (void*) ;

__attribute__((used)) static void *fsl_diu_alloc(size_t size, phys_addr_t *phys)
{
 void *virt;

 pr_debug("size=%zu\n", size);

 virt = alloc_pages_exact(size, GFP_DMA | __GFP_ZERO);
 if (virt) {
  *phys = virt_to_phys(virt);
  pr_debug("virt=%p phys=%llx\n", virt,
   (unsigned long long)*phys);
 }

 return virt;
}
