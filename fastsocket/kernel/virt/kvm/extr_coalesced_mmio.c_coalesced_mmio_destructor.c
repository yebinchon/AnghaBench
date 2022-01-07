
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_device {int dummy; } ;
struct kvm_coalesced_mmio_dev {int dummy; } ;


 int kfree (struct kvm_coalesced_mmio_dev*) ;
 struct kvm_coalesced_mmio_dev* to_mmio (struct kvm_io_device*) ;

__attribute__((used)) static void coalesced_mmio_destructor(struct kvm_io_device *this)
{
 struct kvm_coalesced_mmio_dev *dev = to_mmio(this);

 kfree(dev);
}
