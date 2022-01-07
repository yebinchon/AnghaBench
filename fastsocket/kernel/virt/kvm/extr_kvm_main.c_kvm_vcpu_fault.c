
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_fault {scalar_t__ pgoff; struct page* page; } ;
struct vm_area_struct {TYPE_3__* vm_file; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int pio_data; } ;
struct kvm_vcpu {TYPE_2__* kvm; TYPE_1__ arch; int run; } ;
struct TYPE_6__ {struct kvm_vcpu* private_data; } ;
struct TYPE_5__ {int coalesced_mmio_ring; } ;


 scalar_t__ KVM_COALESCED_MMIO_PAGE_OFFSET ;
 scalar_t__ KVM_PIO_PAGE_OFFSET ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static int kvm_vcpu_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct kvm_vcpu *vcpu = vma->vm_file->private_data;
 struct page *page;

 if (vmf->pgoff == 0)
  page = virt_to_page(vcpu->run);
 else
  return VM_FAULT_SIGBUS;
 get_page(page);
 vmf->page = page;
 return 0;
}
