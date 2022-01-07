
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int debug_dir; int debug_async; int debug_periodic; int debug_registers; } ;


 int debugfs_remove (int ) ;

__attribute__((used)) static inline void remove_debug_files (struct ehci_hcd *ehci)
{
 debugfs_remove(ehci->debug_registers);
 debugfs_remove(ehci->debug_periodic);
 debugfs_remove(ehci->debug_async);
 debugfs_remove(ehci->debug_dir);
}
