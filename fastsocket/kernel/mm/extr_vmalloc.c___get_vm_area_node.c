
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int dummy; } ;
struct vm_struct {int dummy; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 int GFP_RECLAIM_MASK ;
 int IOREMAP_MAX_ORDER ;
 scalar_t__ IS_ERR (struct vmap_area*) ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 unsigned long VM_IOREMAP ;
 unsigned long VM_UNLIST ;
 struct vmap_area* alloc_vmap_area (unsigned long,unsigned long,unsigned long,unsigned long,int,int) ;
 int fls (unsigned long) ;
 int in_interrupt () ;
 int insert_vmalloc_vm (struct vm_struct*,struct vmap_area*,unsigned long,void*) ;
 int kfree (struct vm_struct*) ;
 struct vm_struct* kzalloc_node (int,int,int) ;
 int setup_vmalloc_vm (struct vm_struct*,struct vmap_area*,unsigned long,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct vm_struct *__get_vm_area_node(unsigned long size,
  unsigned long align, unsigned long flags, unsigned long start,
  unsigned long end, int node, gfp_t gfp_mask, void *caller)
{
 static struct vmap_area *va;
 struct vm_struct *area;

 BUG_ON(in_interrupt());
 if (flags & VM_IOREMAP) {
  int bit = fls(size);

  if (bit > IOREMAP_MAX_ORDER)
   bit = IOREMAP_MAX_ORDER;
  else if (bit < PAGE_SHIFT)
   bit = PAGE_SHIFT;

  align = 1ul << bit;
 }

 size = PAGE_ALIGN(size);
 if (unlikely(!size))
  return ((void*)0);

 area = kzalloc_node(sizeof(*area), gfp_mask & GFP_RECLAIM_MASK, node);
 if (unlikely(!area))
  return ((void*)0);




 size += PAGE_SIZE;

 va = alloc_vmap_area(size, align, start, end, node, gfp_mask);
 if (IS_ERR(va)) {
  kfree(area);
  return ((void*)0);
 }
 if (flags & VM_UNLIST)
  setup_vmalloc_vm(area, va, flags, caller);
 else
  insert_vmalloc_vm(area, va, flags, caller);

 return area;
}
