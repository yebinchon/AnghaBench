
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_io_device {TYPE_1__* ops; } ;
typedef int gpa_t ;
struct TYPE_2__ {int (* read ) (struct kvm_io_device*,int ,int,void*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct kvm_io_device*,int ,int,void*) ;

__attribute__((used)) static inline int kvm_iodevice_read(struct kvm_io_device *dev,
        gpa_t addr, int l, void *v)
{
 return dev->ops->read ? dev->ops->read(dev, addr, l, v) : -EOPNOTSUPP;
}
