
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int GP_ENABLE ;
 int RFPinsOutput ;
 int RFPinsSelect ;
 int SW_CONTROL_GPIO ;
 int force_pci_posting (struct net_device*) ;
 int mdelay (int) ;
 int rtl8185_rf_pins_enable (struct net_device*) ;
 int write_nic_byte (struct net_device*,int ,int ) ;
 int write_nic_word (struct net_device*,int ,int) ;

__attribute__((used)) static void rtl8225_host_pci_init(struct net_device *dev)
{
 write_nic_word(dev, RFPinsOutput, 0x480);

 rtl8185_rf_pins_enable(dev);

 write_nic_word(dev, RFPinsSelect, 0x88 | SW_CONTROL_GPIO);

 write_nic_byte(dev, GP_ENABLE, 0);

 force_pci_posting(dev);
 mdelay(200);


 write_nic_word(dev, GP_ENABLE, 0xff & (~(1 << 6)));
}
