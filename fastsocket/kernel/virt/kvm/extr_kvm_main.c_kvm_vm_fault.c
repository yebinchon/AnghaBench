
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_fault {struct page* page; int pgoff; } ;
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;
struct TYPE_5__ {int mm; } ;
struct TYPE_4__ {struct kvm* private_data; } ;


 int VM_FAULT_SIGBUS ;
 TYPE_2__* current ;
 int get_user_pages (TYPE_2__*,int ,unsigned long,int,int,int ,struct page**,int *) ;
 unsigned long gfn_to_hva (struct kvm*,int ) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int kvm_vm_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page *page[1];
 unsigned long addr;
 int npages;
 gfn_t gfn = vmf->pgoff;
 struct kvm *kvm = vma->vm_file->private_data;

 addr = gfn_to_hva(kvm, gfn);
 if (kvm_is_error_hva(addr))
  return VM_FAULT_SIGBUS;

 npages = get_user_pages(current, current->mm, addr, 1, 1, 0, page,
    ((void*)0));
 if (unlikely(npages != 1))
  return VM_FAULT_SIGBUS;

 vmf->page = page[0];
 return 0;
}
