
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int TX_CONF ;
 int TX_LOOPBACK_MASK ;
 int TX_LOOPBACK_NONE ;
 int TX_LOOPBACK_SHIFT ;
 int read_nic_dword (struct net_device*,int ) ;
 int write_nic_dword (struct net_device*,int ,int) ;

void rtl8180_conttx_disable(struct net_device *dev)
{
 u32 txconf;

 txconf = read_nic_dword(dev,TX_CONF);
 txconf = txconf &~ TX_LOOPBACK_MASK;
 txconf = txconf | (TX_LOOPBACK_NONE <<TX_LOOPBACK_SHIFT);
 write_nic_dword(dev,TX_CONF,txconf);
}
