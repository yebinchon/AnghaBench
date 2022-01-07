
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;


 unsigned long VM_DONTEXPAND ;
 unsigned long VM_HUGEPAGE ;
 unsigned long VM_HUGETLB ;
 unsigned long VM_INSERTPAGE ;
 unsigned long VM_IO ;
 unsigned long VM_MAYSHARE ;
 unsigned long VM_MIXEDMAP ;
 unsigned long VM_NOHUGEPAGE ;
 unsigned long VM_PFNMAP ;
 unsigned long VM_RESERVED ;
 unsigned long VM_SAO ;
 unsigned long VM_SHARED ;

int hugepage_madvise(unsigned long *vm_flags, int advice)
{
 switch (advice) {
 case 129:



  if (*vm_flags & (VM_HUGEPAGE |
     VM_SHARED | VM_MAYSHARE |
     VM_PFNMAP | VM_IO | VM_DONTEXPAND |
     VM_RESERVED | VM_HUGETLB | VM_INSERTPAGE |
     VM_MIXEDMAP | VM_SAO))
   return -EINVAL;
  *vm_flags &= ~VM_NOHUGEPAGE;
  *vm_flags |= VM_HUGEPAGE;
  break;
 case 128:



  if (*vm_flags & (VM_NOHUGEPAGE |
     VM_SHARED | VM_MAYSHARE |
     VM_PFNMAP | VM_IO | VM_DONTEXPAND |
     VM_RESERVED | VM_HUGETLB | VM_INSERTPAGE |
     VM_MIXEDMAP | VM_SAO))
   return -EINVAL;
  *vm_flags &= ~VM_HUGEPAGE;
  *vm_flags |= VM_NOHUGEPAGE;
  break;
 }

 return 0;
}
