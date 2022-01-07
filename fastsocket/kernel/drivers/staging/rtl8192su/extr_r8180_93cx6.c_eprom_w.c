
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int EPROM_DELAY ;
 int EPROM_W_SHIFT ;
 int force_pci_posting (struct net_device*) ;
 int read_nic_byte_E (struct net_device*,int ) ;
 int udelay (int ) ;
 int write_nic_byte_E (struct net_device*,int ,int) ;

void eprom_w(struct net_device *dev,short bit)
{
 if(bit)
  write_nic_byte_E(dev, EPROM_CMD, (1<<EPROM_W_SHIFT) | read_nic_byte_E(dev,EPROM_CMD));

 else
  write_nic_byte_E(dev, EPROM_CMD, read_nic_byte_E(dev,EPROM_CMD) &~(1<<EPROM_W_SHIFT));


 force_pci_posting(dev);
 udelay(EPROM_DELAY);
}
