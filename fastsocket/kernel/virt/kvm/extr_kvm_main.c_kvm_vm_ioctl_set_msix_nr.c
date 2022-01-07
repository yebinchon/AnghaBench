
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msix_entry {int dummy; } ;
struct kvm_guest_msix_entry {int dummy; } ;
struct kvm_assigned_msix_nr {int entry_nr; int assigned_dev_id; } ;
struct kvm_assigned_dev_kernel {scalar_t__ entries_nr; void* host_msix_entries; void* guest_msix_entries; } ;
struct TYPE_2__ {int assigned_dev_head; } ;
struct kvm {int lock; TYPE_1__ arch; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ KVM_MAX_MSIX_PER_DEV ;
 int kfree (void*) ;
 struct kvm_assigned_dev_kernel* kvm_find_assigned_dev (int *,int ) ;
 void* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_msix_nr(struct kvm *kvm,
        struct kvm_assigned_msix_nr *entry_nr)
{
 int r = 0;
 struct kvm_assigned_dev_kernel *adev;

 mutex_lock(&kvm->lock);

 adev = kvm_find_assigned_dev(&kvm->arch.assigned_dev_head,
          entry_nr->assigned_dev_id);
 if (!adev) {
  r = -EINVAL;
  goto msix_nr_out;
 }

 if (adev->entries_nr == 0) {
  adev->entries_nr = entry_nr->entry_nr;
  if (adev->entries_nr == 0 ||
      adev->entries_nr >= KVM_MAX_MSIX_PER_DEV) {
   r = -EINVAL;
   goto msix_nr_out;
  }

  adev->host_msix_entries = kzalloc(sizeof(struct msix_entry) *
      entry_nr->entry_nr,
      GFP_KERNEL);
  if (!adev->host_msix_entries) {
   r = -ENOMEM;
   goto msix_nr_out;
  }
  adev->guest_msix_entries = kzalloc(
    sizeof(struct kvm_guest_msix_entry) *
    entry_nr->entry_nr, GFP_KERNEL);
  if (!adev->guest_msix_entries) {
   kfree(adev->host_msix_entries);
   r = -ENOMEM;
   goto msix_nr_out;
  }
 } else
  r = -EINVAL;
msix_nr_out:
 mutex_unlock(&kvm->lock);
 return r;
}
