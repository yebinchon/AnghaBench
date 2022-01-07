
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct pci_driver {int name; } ;
struct pci_dev {TYPE_2__* resource; int irq; int device; int vendor; int devfn; TYPE_1__* bus; } ;
typedef int resource_size_t ;
struct TYPE_4__ {int flags; scalar_t__ start; scalar_t__ end; } ;
struct TYPE_3__ {int number; } ;


 int PCI_REGION_FLAG_MASK ;
 struct pci_driver* pci_dev_driver (struct pci_dev const*) ;
 int pci_resource_to_user (struct pci_dev const*,int,TYPE_2__*,int*,int*) ;
 scalar_t__ trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static int mmio_print_pcidev(struct trace_seq *s, const struct pci_dev *dev)
{
 int ret = 0;
 int i;
 resource_size_t start, end;
 const struct pci_driver *drv = pci_dev_driver(dev);


 ret += trace_seq_printf(s, "PCIDEV %02x%02x %04x%04x %x",
    dev->bus->number, dev->devfn,
    dev->vendor, dev->device, dev->irq);





 for (i = 0; i < 7; i++) {
  pci_resource_to_user(dev, i, &dev->resource[i], &start, &end);
  ret += trace_seq_printf(s, " %llx",
   (unsigned long long)(start |
   (dev->resource[i].flags & PCI_REGION_FLAG_MASK)));
 }
 for (i = 0; i < 7; i++) {
  pci_resource_to_user(dev, i, &dev->resource[i], &start, &end);
  ret += trace_seq_printf(s, " %llx",
   dev->resource[i].start < dev->resource[i].end ?
   (unsigned long long)(end - start) + 1 : 0);
 }
 if (drv)
  ret += trace_seq_printf(s, " %s\n", drv->name);
 else
  ret += trace_seq_printf(s, " \n");
 return ret;
}
