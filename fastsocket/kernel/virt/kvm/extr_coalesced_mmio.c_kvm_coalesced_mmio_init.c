
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_coalesced_mmio_dev {int dev; struct kvm* kvm; int lock; } ;
struct kvm {int slots_lock; struct kvm_coalesced_mmio_dev* coalesced_mmio_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KVM_MMIO_BUS ;
 int coalesced_mmio_ops ;
 int kfree (struct kvm_coalesced_mmio_dev*) ;
 int kvm_io_bus_register_dev (struct kvm*,int ,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 struct kvm_coalesced_mmio_dev* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

int kvm_coalesced_mmio_init(struct kvm *kvm)
{
 struct kvm_coalesced_mmio_dev *dev;
 int ret;

 dev = kzalloc(sizeof(struct kvm_coalesced_mmio_dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;
 spin_lock_init(&dev->lock);
 kvm_iodevice_init(&dev->dev, &coalesced_mmio_ops);
 dev->kvm = kvm;
 kvm->coalesced_mmio_dev = dev;

 mutex_lock(&kvm->slots_lock);
 ret = kvm_io_bus_register_dev(kvm, KVM_MMIO_BUS, &dev->dev);
 mutex_unlock(&kvm->slots_lock);
 if (ret < 0)
  kfree(dev);

 return ret;
}
