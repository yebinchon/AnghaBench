
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_io_device {TYPE_1__* ops; } ;
typedef int gpa_t ;
struct TYPE_2__ {int (* write ) (struct kvm_io_device*,int ,int,void const*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct kvm_io_device*,int ,int,void const*) ;

__attribute__((used)) static inline int kvm_iodevice_write(struct kvm_io_device *dev,
         gpa_t addr, int l, const void *v)
{
 return dev->ops->write ? dev->ops->write(dev, addr, l, v) : -EOPNOTSUPP;
}
