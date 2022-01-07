
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;


 int huge_ptep_get (int *) ;
 scalar_t__ huge_ptep_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,int) ;
 int pte_mkdirty (int ) ;
 int pte_mkwrite (int ) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static void set_huge_ptep_writable(struct vm_area_struct *vma,
       unsigned long address, pte_t *ptep)
{
 pte_t entry;

 entry = pte_mkwrite(pte_mkdirty(huge_ptep_get(ptep)));
 if (huge_ptep_set_access_flags(vma, address, ptep, entry, 1)) {
  update_mmu_cache(vma, address, entry);
 }
}
