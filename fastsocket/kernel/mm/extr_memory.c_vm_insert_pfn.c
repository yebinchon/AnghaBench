
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_page_prot; } ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int EFAULT ;
 int EINVAL ;
 int PAGE_SIZE ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int insert_pfn (struct vm_area_struct*,unsigned long,unsigned long,int ) ;
 scalar_t__ is_cow_mapping (int) ;
 scalar_t__ pfn_valid (unsigned long) ;
 scalar_t__ track_pfn_vma_new (struct vm_area_struct*,int *,unsigned long,int ) ;
 int untrack_pfn_vma (struct vm_area_struct*,unsigned long,int ) ;

int vm_insert_pfn(struct vm_area_struct *vma, unsigned long addr,
   unsigned long pfn)
{
 int ret;
 pgprot_t pgprot = vma->vm_page_prot;






 BUG_ON(!(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)));
 BUG_ON((vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) ==
      (VM_PFNMAP|VM_MIXEDMAP));
 BUG_ON((vma->vm_flags & VM_PFNMAP) && is_cow_mapping(vma->vm_flags));
 BUG_ON((vma->vm_flags & VM_MIXEDMAP) && pfn_valid(pfn));

 if (addr < vma->vm_start || addr >= vma->vm_end)
  return -EFAULT;
 if (track_pfn_vma_new(vma, &pgprot, pfn, PAGE_SIZE))
  return -EINVAL;

 ret = insert_pfn(vma, addr, pfn, pgprot);

 if (ret)
  untrack_pfn_vma(vma, pfn, PAGE_SIZE);

 return ret;
}
