
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cx25821_dev {TYPE_1__* sram_channels; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int int_stat; } ;


 int IRQ_RETVAL (int) ;
 int PCI_INT_MSK ;
 int PCI_INT_STAT ;
 int VID_CHANNEL_NUM ;
 scalar_t__ cx25821_video_irq (struct cx25821_dev*,int,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;

__attribute__((used)) static irqreturn_t cx25821_irq(int irq, void *dev_id)
{
 struct cx25821_dev *dev = dev_id;
 u32 pci_status, pci_mask;
 u32 vid_status;
 int i, handled = 0;
 u32 mask[8] = { 1, 2, 4, 8, 16, 32, 64, 128 };

 pci_status = cx_read(PCI_INT_STAT);
 pci_mask = cx_read(PCI_INT_MSK);

 if (pci_status == 0)
  goto out;

 for (i = 0; i < VID_CHANNEL_NUM; i++) {
  if (pci_status & mask[i]) {
   vid_status = cx_read(dev->sram_channels[i].int_stat);

   if (vid_status)
    handled +=
        cx25821_video_irq(dev, i, vid_status);

   cx_write(PCI_INT_STAT, mask[i]);
  }
 }

      out:
 return IRQ_RETVAL(handled);
}
