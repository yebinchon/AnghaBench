
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int TX_ANTENNA ;
 int force_pci_posting (struct net_device*) ;
 int mdelay (int) ;
 int write_nic_byte (struct net_device*,int ,int ) ;

void rtl8185_tx_antenna(struct net_device *dev, u8 ant)
{
 write_nic_byte(dev, TX_ANTENNA, ant);
 force_pci_posting(dev);
 mdelay(1);
}
