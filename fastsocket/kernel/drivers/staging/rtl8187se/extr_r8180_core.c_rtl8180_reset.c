
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int CMD ;
 int CMD_RST_SHIFT ;
 int DMESG (char*) ;
 int DMESGW (char*) ;
 int EPROM_CMD_LOAD ;
 int force_pci_posting (struct net_device*) ;
 int mdelay (int) ;
 int read_nic_byte (struct net_device*,int ) ;
 int rtl8180_irq_disable (struct net_device*) ;
 int rtl8180_set_mode (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8180_reset(struct net_device *dev)
{
 u8 cr;

 rtl8180_irq_disable(dev);

 cr=read_nic_byte(dev,CMD);
 cr = cr & 2;
 cr = cr | (1<<CMD_RST_SHIFT);
 write_nic_byte(dev,CMD,cr);

 force_pci_posting(dev);

 mdelay(200);

 if(read_nic_byte(dev,CMD) & (1<<CMD_RST_SHIFT))
  DMESGW("Card reset timeout!");
 else
  DMESG("Card successfully reset");

 rtl8180_set_mode(dev,EPROM_CMD_LOAD);
 force_pci_posting(dev);
 mdelay(200);
}
