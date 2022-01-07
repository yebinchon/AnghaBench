
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cx25821_dev {int dummy; } ;
struct TYPE_3__ {struct cx25821_dev* dev; } ;
typedef TYPE_1__ snd_cx25821_card_t ;
typedef int irqreturn_t ;


 int AUD_A_GPCNT ;
 int AUD_A_INT_MSK ;
 int AUD_A_INT_STAT ;
 int IRQ_RETVAL (int) ;
 int PCI_INT_STAT ;
 int cx25821_aud_irq (TYPE_1__*,int,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;

__attribute__((used)) static irqreturn_t cx25821_irq(int irq, void *dev_id)
{
 snd_cx25821_card_t *chip = dev_id;
 struct cx25821_dev *dev = chip->dev;
 u32 status, pci_status;
 u32 audint_status, audint_mask;
 int loop, handled = 0;
 int audint_count = 0;

 audint_status = cx_read(AUD_A_INT_STAT);
 audint_mask = cx_read(AUD_A_INT_MSK);
 audint_count = cx_read(AUD_A_GPCNT);
 status = cx_read(PCI_INT_STAT);

 for (loop = 0; loop < 1; loop++) {
  status = cx_read(PCI_INT_STAT);
  if (0 == status) {
   status = cx_read(PCI_INT_STAT);
   audint_status = cx_read(AUD_A_INT_STAT);
   audint_mask = cx_read(AUD_A_INT_MSK);

   if (status) {
    handled = 1;
    cx_write(PCI_INT_STAT, status);

    cx25821_aud_irq(chip, audint_status,
      audint_mask);
    break;
   } else
    goto out;
  }

  handled = 1;
  cx_write(PCI_INT_STAT, status);

  cx25821_aud_irq(chip, audint_status, audint_mask);
 }

 pci_status = cx_read(PCI_INT_STAT);

 if (handled)
  cx_write(PCI_INT_STAT, pci_status);

      out:
 return IRQ_RETVAL(handled);
}
