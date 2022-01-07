
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {unsigned long va_start; unsigned long va_end; int rb_node; } ;


 unsigned long VMALLOC_END ;
 unsigned long min (unsigned long,unsigned long const) ;
 struct vmap_area* node_to_va (int ) ;
 int rb_prev (int *) ;

__attribute__((used)) static unsigned long pvm_determine_end(struct vmap_area **pnext,
           struct vmap_area **pprev,
           unsigned long align)
{
 const unsigned long vmalloc_end = VMALLOC_END & ~(align - 1);
 unsigned long addr;

 if (*pnext)
  addr = min((*pnext)->va_start & ~(align - 1), vmalloc_end);
 else
  addr = vmalloc_end;

 while (*pprev && (*pprev)->va_end > addr) {
  *pnext = *pprev;
  *pprev = node_to_va(rb_prev(&(*pnext)->rb_node));
 }

 return addr;
}
