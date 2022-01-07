
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fhci_hcd {void* dfs_irq_stat; void* dfs_regs; int dfs_root; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int S_IFREG ;
 int S_IRUGO ;
 int WARN_ON (int) ;
 int debugfs_create_dir (int ,int ) ;
 void* debugfs_create_file (char*,int,int ,struct fhci_hcd*,int *) ;
 int dev_name (struct device*) ;
 int fhci_dfs_irq_stat_fops ;
 int fhci_dfs_regs_fops ;
 TYPE_2__* fhci_to_hcd (struct fhci_hcd*) ;
 int usb_debug_root ;

void fhci_dfs_create(struct fhci_hcd *fhci)
{
 struct device *dev = fhci_to_hcd(fhci)->self.controller;

 fhci->dfs_root = debugfs_create_dir(dev_name(dev), usb_debug_root);
 if (!fhci->dfs_root) {
  WARN_ON(1);
  return;
 }

 fhci->dfs_regs = debugfs_create_file("regs", S_IFREG | S_IRUGO,
  fhci->dfs_root, fhci, &fhci_dfs_regs_fops);

 fhci->dfs_irq_stat = debugfs_create_file("irq_stat",
  S_IFREG | S_IRUGO, fhci->dfs_root, fhci,
  &fhci_dfs_irq_stat_fops);

 WARN_ON(!fhci->dfs_regs || !fhci->dfs_irq_stat);
}
