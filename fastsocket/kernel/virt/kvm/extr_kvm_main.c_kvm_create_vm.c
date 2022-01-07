
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct kvm_memslots {int dummy; } ;
struct kvm_io_bus {int dummy; } ;
struct kvm_coalesced_mmio_ring {int dummy; } ;
struct TYPE_4__ {int * ops; } ;
struct kvm {int vm_list; int users_count; int slots_lock; int irq_lock; int lock; int requests_lock; int mmu_lock; TYPE_2__* mm; struct kvm* memslots; int srcu; struct kvm** buses; TYPE_1__ mmu_notifier; struct kvm_coalesced_mmio_ring* coalesced_mmio_ring; int irq_ack_notifier_list; int mask_notifier_list; } ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int mm_count; } ;


 int ENOMEM ;
 struct kvm* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct kvm*) ;
 int KVM_NR_BUSES ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int cleanup_srcu_struct (int *) ;
 TYPE_3__* current ;
 int hardware_disable_all () ;
 int hardware_enable_all () ;
 int init_srcu_struct (int *) ;
 int kfree (struct kvm*) ;
 struct kvm* kvm_arch_create_vm () ;
 int kvm_coalesced_mmio_init (struct kvm*) ;
 int kvm_eventfd_init (struct kvm*) ;
 int kvm_lock ;
 int kvm_mmu_notifier_ops ;
 void* kzalloc (int,int) ;
 int list_add (int *,int *) ;
 int mmu_notifier_register (TYPE_1__*,TYPE_2__*) ;
 int mutex_init (int *) ;
 scalar_t__ page_address (struct page*) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int vm_list ;

__attribute__((used)) static struct kvm *kvm_create_vm(void)
{
 int r = 0, i;
 struct kvm *kvm = kvm_arch_create_vm();




 if (IS_ERR(kvm))
  goto out;

 r = hardware_enable_all();
 if (r)
  goto out_err_nodisable;





 kvm->memslots = kzalloc(sizeof(struct kvm_memslots), GFP_KERNEL);
 if (!kvm->memslots) {
  kfree(kvm);
  return ERR_PTR(-ENOMEM);
 }

 r = init_srcu_struct(&kvm->srcu);
 if (r) {
  kfree(kvm->memslots);
  kfree(kvm);
  return ERR_PTR(r);
 }

 for (i = 0; i < KVM_NR_BUSES; i++) {
  kvm->buses[i] = kzalloc(sizeof(struct kvm_io_bus),
     GFP_KERNEL);
  if (!kvm->buses[i]) {
   cleanup_srcu_struct(&kvm->srcu);
   kfree(kvm->memslots);
   kfree(kvm);
   return ERR_PTR(-ENOMEM);
  }
 }
 kvm->mm = current->mm;
 atomic_inc(&kvm->mm->mm_count);
 spin_lock_init(&kvm->mmu_lock);
 spin_lock_init(&kvm->requests_lock);
 kvm_eventfd_init(kvm);
 mutex_init(&kvm->lock);
 mutex_init(&kvm->irq_lock);
 mutex_init(&kvm->slots_lock);
 atomic_set(&kvm->users_count, 1);
 spin_lock(&kvm_lock);
 list_add(&kvm->vm_list, &vm_list);
 spin_unlock(&kvm_lock);



out:
 return kvm;

out_err:
 hardware_disable_all();
out_err_nodisable:
 kfree(kvm);
 return ERR_PTR(r);
}
