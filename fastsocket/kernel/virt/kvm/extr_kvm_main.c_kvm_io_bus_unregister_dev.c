
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_device {int dummy; } ;
struct kvm_io_bus {int dev_count; struct kvm_io_device** devs; } ;
struct kvm {int srcu; struct kvm_io_bus** buses; } ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct kvm_io_bus*) ;
 struct kvm_io_bus* kzalloc (int,int ) ;
 int memcpy (struct kvm_io_bus*,struct kvm_io_bus*,int) ;
 int rcu_assign_pointer (struct kvm_io_bus*,struct kvm_io_bus*) ;
 int synchronize_srcu_expedited (int *) ;

int kvm_io_bus_unregister_dev(struct kvm *kvm, enum kvm_bus bus_idx,
         struct kvm_io_device *dev)
{
 int i, r;
 struct kvm_io_bus *new_bus, *bus;

 new_bus = kzalloc(sizeof(struct kvm_io_bus), GFP_KERNEL);
 if (!new_bus)
  return -ENOMEM;

 bus = kvm->buses[bus_idx];
 memcpy(new_bus, bus, sizeof(struct kvm_io_bus));

 r = -ENOENT;
 for (i = 0; i < new_bus->dev_count; i++)
  if (new_bus->devs[i] == dev) {
   r = 0;
   new_bus->devs[i] = new_bus->devs[--new_bus->dev_count];
   break;
  }

 if (r) {
  kfree(new_bus);
  return r;
 }

 rcu_assign_pointer(kvm->buses[bus_idx], new_bus);
 synchronize_srcu_expedited(&kvm->srcu);
 kfree(bus);
 return r;
}
