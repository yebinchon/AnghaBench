
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {unsigned long* dirty_bitmap; } ;
struct kvm_dirty_log {size_t slot; int dirty_bitmap; } ;
struct kvm {TYPE_1__* memslots; } ;
struct TYPE_2__ {struct kvm_memory_slot* memslots; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 size_t KVM_MEMORY_SLOTS ;
 scalar_t__ copy_to_user (int ,unsigned long*,unsigned long) ;
 unsigned long kvm_dirty_bitmap_bytes (struct kvm_memory_slot*) ;

int kvm_get_dirty_log(struct kvm *kvm,
   struct kvm_dirty_log *log, int *is_dirty)
{
 struct kvm_memory_slot *memslot;
 int r, i;
 unsigned long n;
 unsigned long any = 0;

 r = -EINVAL;
 if (log->slot >= KVM_MEMORY_SLOTS)
  goto out;

 memslot = &kvm->memslots->memslots[log->slot];
 r = -ENOENT;
 if (!memslot->dirty_bitmap)
  goto out;

 n = kvm_dirty_bitmap_bytes(memslot);

 for (i = 0; !any && i < n/sizeof(long); ++i)
  any = memslot->dirty_bitmap[i];

 r = -EFAULT;
 if (copy_to_user(log->dirty_bitmap, memslot->dirty_bitmap, n))
  goto out;

 if (any)
  *is_dirty = 1;

 r = 0;
out:
 return r;
}
