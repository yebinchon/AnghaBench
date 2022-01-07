
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
typedef struct ata_port_info {int pio_mask; int mwdma_mask; int * port_ops; int udma_mask; int flags; } const ata_port_info ;


 int ATA_FLAG_NO_ATAPI ;
 int ATA_UDMA5 ;
 int ata_pci_sff_init_one (struct pci_dev*,struct ata_port_info const**,int *,int *) ;
 int dev_dbg (int *,char*,int) ;
 int phison_ops ;
 int phison_sht ;

__attribute__((used)) static int phison_init_one(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int ret;
 struct ata_port_info info = {
  .flags = ATA_FLAG_NO_ATAPI,

  .pio_mask = 0x1f,
  .mwdma_mask = 0x07,
  .udma_mask = ATA_UDMA5,

  .port_ops = &phison_ops,
 };
 const struct ata_port_info *ppi[] = { &info, ((void*)0) };

 ret = ata_pci_sff_init_one(pdev, ppi, &phison_sht, ((void*)0));

 dev_dbg(&pdev->dev, "phison_init_one(), ret = %x\n", ret);

 return ret;
}
