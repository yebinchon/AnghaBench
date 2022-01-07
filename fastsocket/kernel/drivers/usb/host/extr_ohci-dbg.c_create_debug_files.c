
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {int bus_name; } ;
struct ohci_hcd {int * debug_dir; int * debug_async; int * debug_periodic; void* debug_registers; } ;
struct TYPE_2__ {struct usb_bus self; } ;


 int S_IRUGO ;
 int debug_async_fops ;
 int debug_periodic_fops ;
 int debug_registers_fops ;
 int * debugfs_create_dir (int ,int ) ;
 void* debugfs_create_file (char*,int ,int *,struct ohci_hcd*,int *) ;
 int debugfs_remove (int *) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;
 int ohci_debug_root ;
 TYPE_1__* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static inline void create_debug_files (struct ohci_hcd *ohci)
{
 struct usb_bus *bus = &ohci_to_hcd(ohci)->self;

 ohci->debug_dir = debugfs_create_dir(bus->bus_name, ohci_debug_root);
 if (!ohci->debug_dir)
  goto dir_error;

 ohci->debug_async = debugfs_create_file("async", S_IRUGO,
      ohci->debug_dir, ohci,
      &debug_async_fops);
 if (!ohci->debug_async)
  goto async_error;

 ohci->debug_periodic = debugfs_create_file("periodic", S_IRUGO,
         ohci->debug_dir, ohci,
         &debug_periodic_fops);
 if (!ohci->debug_periodic)
  goto periodic_error;

 ohci->debug_registers = debugfs_create_file("registers", S_IRUGO,
          ohci->debug_dir, ohci,
          &debug_registers_fops);
 if (!ohci->debug_registers)
  goto registers_error;

 ohci_dbg (ohci, "created debug files\n");
 return;

registers_error:
 debugfs_remove(ohci->debug_periodic);
periodic_error:
 debugfs_remove(ohci->debug_async);
async_error:
 debugfs_remove(ohci->debug_dir);
dir_error:
 ohci->debug_periodic = ((void*)0);
 ohci->debug_async = ((void*)0);
 ohci->debug_dir = ((void*)0);
}
