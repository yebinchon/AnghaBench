
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int TransmitConfig; } ;
struct net_device {int dummy; } ;


 int CMD ;
 int CMD_TX_ENABLE_SHIFT ;
 int DMESG (char*,int ,int ) ;
 int MSR ;
 int MSR_LINK_ENEDCA ;
 int TCR ;
 int fix_tx_fifo (struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void rtl8185b_tx_enable(struct net_device *dev)
{
 u8 cmd;

 u8 byte;

 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 write_nic_dword(dev, TCR, priv->TransmitConfig);
 byte = read_nic_byte(dev, MSR);
 byte |= MSR_LINK_ENEDCA;
 write_nic_byte(dev, MSR, byte);

 fix_tx_fifo(dev);





 cmd=read_nic_byte(dev,CMD);
 write_nic_byte(dev,CMD,cmd | (1<<CMD_TX_ENABLE_SHIFT));
}
