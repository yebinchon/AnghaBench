
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_device {int dummy; } ;
struct kvm_io_bus {int dev_count; struct kvm_io_device** devs; } ;


 int kfree (struct kvm_io_bus*) ;
 int kvm_iodevice_destructor (struct kvm_io_device*) ;

__attribute__((used)) static void kvm_io_bus_destroy(struct kvm_io_bus *bus)
{
 int i;

 for (i = 0; i < bus->dev_count; i++) {
  struct kvm_io_device *pos = bus->devs[i];

  kvm_iodevice_destructor(pos);
 }
 kfree(bus);
}
