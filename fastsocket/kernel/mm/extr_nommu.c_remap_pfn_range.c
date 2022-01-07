
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; int vm_pgoff; } ;
typedef int pgprot_t ;


 int PAGE_SHIFT ;

int remap_pfn_range(struct vm_area_struct *vma, unsigned long from,
  unsigned long to, unsigned long size, pgprot_t prot)
{
 vma->vm_start = vma->vm_pgoff << PAGE_SHIFT;
 return 0;
}
