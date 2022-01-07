
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct resv_map {int dummy; } ;


 int HPAGE_RESV_MASK ;
 int VM_BUG_ON (int) ;
 int VM_MAYSHARE ;
 int get_vma_private_data (struct vm_area_struct*) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;

__attribute__((used)) static struct resv_map *vma_resv_map(struct vm_area_struct *vma)
{
 VM_BUG_ON(!is_vm_hugetlb_page(vma));
 if (!(vma->vm_flags & VM_MAYSHARE))
  return (struct resv_map *)(get_vma_private_data(vma) &
       ~HPAGE_RESV_MASK);
 return ((void*)0);
}
