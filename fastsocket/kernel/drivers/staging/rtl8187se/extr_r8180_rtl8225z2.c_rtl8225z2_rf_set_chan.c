
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int RF_ReadReg (struct net_device*,int) ;
 int RF_WriteReg (struct net_device*,int,int) ;
 int force_pci_posting (struct net_device*) ;
 int mdelay (int) ;
 int* rtl8225_chan ;
 int rtl8225z2_SetTXPowerLevel (struct net_device*,short) ;

void rtl8225z2_rf_set_chan(struct net_device *dev, short ch)
{
 rtl8225z2_SetTXPowerLevel(dev, ch);

 RF_WriteReg(dev, 0x7, rtl8225_chan[ch]);

 if ((RF_ReadReg(dev, 0x7) & 0x0F80) != rtl8225_chan[ch])
  RF_WriteReg(dev, 0x7, rtl8225_chan[ch]);

 mdelay(1);

 force_pci_posting(dev);
 mdelay(10);
}
