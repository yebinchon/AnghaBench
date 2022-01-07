
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int mb () ;
 int read_nic_byte (struct net_device*,int ) ;

inline void force_pci_posting(struct net_device *dev)
{
 read_nic_byte(dev,EPROM_CMD);
 mb();
}
