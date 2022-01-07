
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;
typedef int pgprot_t ;
typedef int gfp_t ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int VMALLOC_END ;
 int VMALLOC_START ;
 int VM_ALLOC ;
 int VM_UNLIST ;
 struct vm_struct* __get_vm_area_node (unsigned long,unsigned long,int,int ,int ,int,int ,void*) ;
 void* __vmalloc_area_node (struct vm_struct*,int ,int ,int,void*) ;
 int insert_vmalloc_vmlist (struct vm_struct*) ;
 int kmemleak_alloc (void*,unsigned long,int,int ) ;
 unsigned long totalram_pages ;

__attribute__((used)) static void *__vmalloc_node(unsigned long size, unsigned long align,
       gfp_t gfp_mask, pgprot_t prot,
       int node, void *caller)
{
 struct vm_struct *area;
 void *addr;
 unsigned long real_size = size;

 size = PAGE_ALIGN(size);
 if (!size || (size >> PAGE_SHIFT) > totalram_pages)
  return ((void*)0);

 area = __get_vm_area_node(size, align, VM_ALLOC | VM_UNLIST, VMALLOC_START,
      VMALLOC_END, node, gfp_mask, caller);

 if (!area)
  return ((void*)0);

 addr = __vmalloc_area_node(area, gfp_mask, prot, node, caller);
 if (!addr)
  return ((void*)0);





 insert_vmalloc_vmlist(area);






 kmemleak_alloc(addr, real_size, 3, gfp_mask);

 return addr;
}
