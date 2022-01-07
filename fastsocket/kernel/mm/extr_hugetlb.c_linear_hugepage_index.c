
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pgoff_t ;


 int hstate_vma (struct vm_area_struct*) ;
 int vma_hugecache_offset (int ,struct vm_area_struct*,unsigned long) ;

pgoff_t linear_hugepage_index(struct vm_area_struct *vma,
         unsigned long address)
{
 return vma_hugecache_offset(hstate_vma(vma), vma, address);
}
