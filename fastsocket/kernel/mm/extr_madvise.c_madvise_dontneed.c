
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int last_index; struct vm_area_struct* nonlinear_vma; } ;
struct vm_area_struct {int vm_flags; } ;


 long EINVAL ;
 int ULONG_MAX ;
 int VM_HUGETLB ;
 int VM_LOCKED ;
 int VM_NONLINEAR ;
 int VM_PFNMAP ;
 scalar_t__ unlikely (int) ;
 int zap_page_range (struct vm_area_struct*,unsigned long,unsigned long,struct zap_details*) ;

__attribute__((used)) static long madvise_dontneed(struct vm_area_struct * vma,
        struct vm_area_struct ** prev,
        unsigned long start, unsigned long end)
{
 *prev = vma;
 if (vma->vm_flags & (VM_LOCKED|VM_HUGETLB|VM_PFNMAP))
  return -EINVAL;

 if (unlikely(vma->vm_flags & VM_NONLINEAR)) {
  struct zap_details details = {
   .nonlinear_vma = vma,
   .last_index = ULONG_MAX,
  };
  zap_page_range(vma, start, end - start, &details);
 } else
  zap_page_range(vma, start, end - start, ((void*)0));
 return 0;
}
