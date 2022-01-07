
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int RF_WriteReg (struct net_device*,int,int) ;
 int RTL8225z2_ANAPARAM2_OFF ;
 int RTL8225z2_ANAPARAM_OFF ;
 int force_pci_posting (struct net_device*) ;
 int mdelay (int) ;
 int rtl8180_set_anaparam (struct net_device*,int ) ;
 int rtl8185_set_anaparam2 (struct net_device*,int ) ;

void rtl8225z2_rf_close(struct net_device *dev)
{
 RF_WriteReg(dev, 0x4, 0x1f);

 force_pci_posting(dev);
 mdelay(1);

 rtl8180_set_anaparam(dev, RTL8225z2_ANAPARAM_OFF);
 rtl8185_set_anaparam2(dev, RTL8225z2_ANAPARAM2_OFF);
}
