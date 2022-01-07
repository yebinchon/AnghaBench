
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned int vm_flags; TYPE_1__* vm_file; int vm_page_prot; TYPE_2__* vm_ops; } ;
struct TYPE_4__ {scalar_t__ page_mkwrite; } ;
struct TYPE_3__ {scalar_t__ f_mapping; } ;


 unsigned int VM_INSERTPAGE ;
 unsigned int VM_PFNMAP ;
 unsigned int VM_SHARED ;
 unsigned int VM_WRITE ;
 scalar_t__ mapping_cap_account_dirty (scalar_t__) ;
 scalar_t__ pgprot_val (int ) ;
 int vm_get_page_prot (unsigned int) ;

int vma_wants_writenotify(struct vm_area_struct *vma)
{
 unsigned int vm_flags = vma->vm_flags;


 if ((vm_flags & (VM_WRITE|VM_SHARED)) != ((VM_WRITE|VM_SHARED)))
  return 0;


 if (vma->vm_ops && vma->vm_ops->page_mkwrite)
  return 1;


 if (pgprot_val(vma->vm_page_prot) !=
     pgprot_val(vm_get_page_prot(vm_flags)))
  return 0;


 if (vm_flags & (VM_PFNMAP|VM_INSERTPAGE))
  return 0;


 return vma->vm_file && vma->vm_file->f_mapping &&
  mapping_cap_account_dirty(vma->vm_file->f_mapping);
}
