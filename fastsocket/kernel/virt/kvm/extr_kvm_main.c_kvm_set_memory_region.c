
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_userspace_memory_region {int dummy; } ;
struct kvm {int slots_lock; } ;


 int __kvm_set_memory_region (struct kvm*,struct kvm_userspace_memory_region*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int kvm_set_memory_region(struct kvm *kvm,
     struct kvm_userspace_memory_region *mem,
     int user_alloc)
{
 int r;

 mutex_lock(&kvm->slots_lock);
 r = __kvm_set_memory_region(kvm, mem, user_alloc);
 mutex_unlock(&kvm->slots_lock);
 return r;
}
