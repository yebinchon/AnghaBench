
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int debug_dir; int debug_async; int debug_periodic; int debug_registers; } ;


 int debugfs_remove (int ) ;

__attribute__((used)) static inline void remove_debug_files (struct ohci_hcd *ohci)
{
 debugfs_remove(ohci->debug_registers);
 debugfs_remove(ohci->debug_periodic);
 debugfs_remove(ohci->debug_async);
 debugfs_remove(ohci->debug_dir);
}
