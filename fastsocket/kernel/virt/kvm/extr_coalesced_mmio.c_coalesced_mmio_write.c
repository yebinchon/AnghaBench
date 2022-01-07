
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_io_device {int dummy; } ;
struct kvm_coalesced_mmio_ring {size_t last; TYPE_2__* coalesced_mmio; } ;
struct kvm_coalesced_mmio_dev {int lock; TYPE_1__* kvm; } ;
typedef int gpa_t ;
struct TYPE_4__ {int len; int data; int phys_addr; } ;
struct TYPE_3__ {struct kvm_coalesced_mmio_ring* coalesced_mmio_ring; } ;


 int EOPNOTSUPP ;
 int KVM_COALESCED_MMIO_MAX ;
 int coalesced_mmio_in_range (struct kvm_coalesced_mmio_dev*,int ,int) ;
 int memcpy (int ,void const*,int) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct kvm_coalesced_mmio_dev* to_mmio (struct kvm_io_device*) ;

__attribute__((used)) static int coalesced_mmio_write(struct kvm_io_device *this,
    gpa_t addr, int len, const void *val)
{
 struct kvm_coalesced_mmio_dev *dev = to_mmio(this);
 struct kvm_coalesced_mmio_ring *ring = dev->kvm->coalesced_mmio_ring;
 if (!coalesced_mmio_in_range(dev, addr, len))
  return -EOPNOTSUPP;

 spin_lock(&dev->lock);



 ring->coalesced_mmio[ring->last].phys_addr = addr;
 ring->coalesced_mmio[ring->last].len = len;
 memcpy(ring->coalesced_mmio[ring->last].data, val, len);
 smp_wmb();
 ring->last = (ring->last + 1) % KVM_COALESCED_MMIO_MAX;
 spin_unlock(&dev->lock);
 return 0;
}
