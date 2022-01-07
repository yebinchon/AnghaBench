
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int EPROM_CS_SHIFT ;
 int EPROM_DELAY ;
 int force_pci_posting (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int udelay (int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

__attribute__((used)) static void eprom_cs(struct net_device *dev, short bit)
{
 if(bit)
  write_nic_byte(dev, EPROM_CMD,
          (1<<EPROM_CS_SHIFT) | read_nic_byte(dev, EPROM_CMD));

 else
  write_nic_byte(dev, EPROM_CMD, read_nic_byte(dev, EPROM_CMD) &~(1<<EPROM_CS_SHIFT));


 force_pci_posting(dev);
 udelay(EPROM_DELAY);
}
