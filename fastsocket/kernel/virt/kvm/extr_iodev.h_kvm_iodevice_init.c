
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_device_ops {int dummy; } ;
struct kvm_io_device {struct kvm_io_device_ops const* ops; } ;



__attribute__((used)) static inline void kvm_iodevice_init(struct kvm_io_device *dev,
         const struct kvm_io_device_ops *ops)
{
 dev->ops = ops;
}
