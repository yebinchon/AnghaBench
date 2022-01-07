
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {int bus_name; } ;
struct ehci_hcd {int * debug_dir; int * debug_async; int * debug_periodic; void* debug_registers; } ;
struct TYPE_2__ {struct usb_bus self; } ;


 int S_IRUGO ;
 int S_IWUGO ;
 int debug_async_fops ;
 int debug_lpm_fops ;
 int debug_periodic_fops ;
 int debug_registers_fops ;
 int * debugfs_create_dir (int ,int ) ;
 void* debugfs_create_file (char*,int,int *,struct usb_bus*,int *) ;
 int debugfs_remove (int *) ;
 int ehci_debug_root ;
 TYPE_1__* ehci_to_hcd (struct ehci_hcd*) ;

__attribute__((used)) static inline void create_debug_files (struct ehci_hcd *ehci)
{
 struct usb_bus *bus = &ehci_to_hcd(ehci)->self;

 ehci->debug_dir = debugfs_create_dir(bus->bus_name, ehci_debug_root);
 if (!ehci->debug_dir)
  goto dir_error;

 ehci->debug_async = debugfs_create_file("async", S_IRUGO,
      ehci->debug_dir, bus,
      &debug_async_fops);
 if (!ehci->debug_async)
  goto async_error;

 ehci->debug_periodic = debugfs_create_file("periodic", S_IRUGO,
         ehci->debug_dir, bus,
         &debug_periodic_fops);
 if (!ehci->debug_periodic)
  goto periodic_error;

 ehci->debug_registers = debugfs_create_file("registers", S_IRUGO,
          ehci->debug_dir, bus,
          &debug_registers_fops);

 ehci->debug_registers = debugfs_create_file("lpm", S_IRUGO|S_IWUGO,
          ehci->debug_dir, bus,
          &debug_lpm_fops);
 if (!ehci->debug_registers)
  goto registers_error;
 return;

registers_error:
 debugfs_remove(ehci->debug_periodic);
periodic_error:
 debugfs_remove(ehci->debug_async);
async_error:
 debugfs_remove(ehci->debug_dir);
dir_error:
 ehci->debug_periodic = ((void*)0);
 ehci->debug_async = ((void*)0);
 ehci->debug_dir = ((void*)0);
}
