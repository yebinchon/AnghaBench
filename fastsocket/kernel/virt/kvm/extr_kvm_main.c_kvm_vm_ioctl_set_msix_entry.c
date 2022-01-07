
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_assigned_msix_entry {scalar_t__ entry; scalar_t__ gsi; int assigned_dev_id; } ;
struct kvm_assigned_dev_kernel {int entries_nr; TYPE_3__* host_msix_entries; TYPE_2__* guest_msix_entries; } ;
struct TYPE_4__ {int assigned_dev_head; } ;
struct kvm {int lock; TYPE_1__ arch; } ;
struct TYPE_6__ {scalar_t__ entry; } ;
struct TYPE_5__ {scalar_t__ vector; scalar_t__ entry; } ;


 int EINVAL ;
 int ENOSPC ;
 struct kvm_assigned_dev_kernel* kvm_find_assigned_dev (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_msix_entry(struct kvm *kvm,
           struct kvm_assigned_msix_entry *entry)
{
 int r = 0, i;
 struct kvm_assigned_dev_kernel *adev;

 mutex_lock(&kvm->lock);

 adev = kvm_find_assigned_dev(&kvm->arch.assigned_dev_head,
          entry->assigned_dev_id);

 if (!adev) {
  r = -EINVAL;
  goto msix_entry_out;
 }

 for (i = 0; i < adev->entries_nr; i++)
  if (adev->guest_msix_entries[i].vector == 0 ||
      adev->guest_msix_entries[i].entry == entry->entry) {
   adev->guest_msix_entries[i].entry = entry->entry;
   adev->guest_msix_entries[i].vector = entry->gsi;
   adev->host_msix_entries[i].entry = entry->entry;
   break;
  }
 if (i == adev->entries_nr) {
  r = -ENOSPC;
  goto msix_entry_out;
 }

msix_entry_out:
 mutex_unlock(&kvm->lock);

 return r;
}
