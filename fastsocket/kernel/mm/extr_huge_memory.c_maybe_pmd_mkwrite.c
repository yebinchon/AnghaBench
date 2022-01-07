
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
typedef int pmd_t ;


 int VM_WRITE ;
 scalar_t__ likely (int) ;
 int pmd_mkwrite (int ) ;

__attribute__((used)) static inline pmd_t maybe_pmd_mkwrite(pmd_t pmd, struct vm_area_struct *vma)
{
 if (likely(vma->vm_flags & VM_WRITE))
  pmd = pmd_mkwrite(pmd);
 return pmd;
}
