
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ area; } ;
struct azx {int init_failed; int num_streams; scalar_t__ irq; scalar_t__ fw; struct azx* azx_dev; int pci; scalar_t__ region_requested; TYPE_1__ posbuf; TYPE_1__ rb; TYPE_1__ bdl; scalar_t__ remap_addr; scalar_t__ msi; scalar_t__ initialized; scalar_t__ vga_switcheroo_registered; scalar_t__ bus; scalar_t__ disabled; int probe_wait; } ;


 int azx_clear_irq_pending (struct azx*) ;
 int azx_del_card_list (struct azx*) ;
 int azx_notifier_unregister (struct azx*) ;
 int azx_stop_chip (struct azx*) ;
 int azx_stream_stop (struct azx*,struct azx*) ;
 int complete_all (int *) ;
 int free_irq (scalar_t__,void*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct azx*) ;
 int mark_pages_wc (struct azx*,TYPE_1__*,int) ;
 int pci_disable_device (int ) ;
 int pci_disable_msi (int ) ;
 int pci_release_regions (int ) ;
 int release_firmware (scalar_t__) ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_hda_unlock_devices (scalar_t__) ;
 scalar_t__ use_vga_switcheroo (struct azx*) ;
 int vga_switcheroo_unregister_client (int ) ;

__attribute__((used)) static int azx_free(struct azx *chip)
{
 int i;

 azx_del_card_list(chip);

 azx_notifier_unregister(chip);

 chip->init_failed = 1;
 complete_all(&chip->probe_wait);

 if (use_vga_switcheroo(chip)) {
  if (chip->disabled && chip->bus)
   snd_hda_unlock_devices(chip->bus);
  if (chip->vga_switcheroo_registered)
   vga_switcheroo_unregister_client(chip->pci);
 }

 if (chip->initialized) {
  azx_clear_irq_pending(chip);
  for (i = 0; i < chip->num_streams; i++)
   azx_stream_stop(chip, &chip->azx_dev[i]);
  azx_stop_chip(chip);
 }

 if (chip->irq >= 0)
  free_irq(chip->irq, (void*)chip);
 if (chip->msi)
  pci_disable_msi(chip->pci);
 if (chip->remap_addr)
  iounmap(chip->remap_addr);

 if (chip->azx_dev) {
  for (i = 0; i < chip->num_streams; i++)
   if (chip->azx_dev[i].bdl.area) {
    mark_pages_wc(chip, &chip->azx_dev[i].bdl, 0);
    snd_dma_free_pages(&chip->azx_dev[i].bdl);
   }
 }
 if (chip->rb.area) {
  mark_pages_wc(chip, &chip->rb, 0);
  snd_dma_free_pages(&chip->rb);
 }
 if (chip->posbuf.area) {
  mark_pages_wc(chip, &chip->posbuf, 0);
  snd_dma_free_pages(&chip->posbuf);
 }
 if (chip->region_requested)
  pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip->azx_dev);




 kfree(chip);

 return 0;
}
