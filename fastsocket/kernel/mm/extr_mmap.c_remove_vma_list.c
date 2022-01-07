
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_file; int vm_flags; } ;
struct mm_struct {long total_vm; long cached_hole_size; } ;


 struct vm_area_struct* remove_vma (struct vm_area_struct*) ;
 unsigned int sysctl_unmap_area_factor ;
 scalar_t__ unlikely (unsigned int) ;
 int update_hiwater_vm (struct mm_struct*) ;
 int validate_mm (struct mm_struct*) ;
 int vm_stat_account (struct mm_struct*,int ,int ,long) ;
 long vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static void remove_vma_list(struct mm_struct *mm, struct vm_area_struct *vma)
{
 unsigned int unmap_factor = sysctl_unmap_area_factor;

 update_hiwater_vm(mm);
 do {
  long nrpages = vma_pages(vma);

  mm->total_vm -= nrpages;
  if (unlikely(unmap_factor))
   mm->cached_hole_size += nrpages;
  vm_stat_account(mm, vma->vm_flags, vma->vm_file, -nrpages);
  vma = remove_vma(vma);
 } while (vma);
 validate_mm(mm);
}
