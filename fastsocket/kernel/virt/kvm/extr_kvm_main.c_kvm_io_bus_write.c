
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_io_bus {int dev_count; int * devs; } ;
struct kvm {int * buses; } ;
typedef int gpa_t ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;


 int EOPNOTSUPP ;
 int kvm_iodevice_write (int ,int ,int,void const*) ;
 struct kvm_io_bus* rcu_dereference (int ) ;

int kvm_io_bus_write(struct kvm *kvm, enum kvm_bus bus_idx, gpa_t addr,
       int len, const void *val)
{
 int i;
 struct kvm_io_bus *bus = rcu_dereference(kvm->buses[bus_idx]);
 for (i = 0; i < bus->dev_count; i++)
  if (!kvm_iodevice_write(bus->devs[i], addr, len, val))
   return 0;
 return -EOPNOTSUPP;
}
