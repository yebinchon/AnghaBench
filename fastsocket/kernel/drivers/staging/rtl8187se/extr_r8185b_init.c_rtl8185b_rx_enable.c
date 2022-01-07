
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8180_priv {int ReceiveConfig; int crcmon; TYPE_1__* ieee80211; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;


 int CMD ;
 int CMD_RX_ENABLE_SHIFT ;
 int DMESG (char*,...) ;
 int IFF_PROMISC ;
 scalar_t__ IW_MODE_MONITOR ;
 int RCR ;
 int RCR_AAP ;
 int RCR_ACF ;
 int RCR_ACRC32 ;
 int RCR_AICV ;
 int RCR_APM ;
 int RCR_APWRMGT ;
 int fix_rx_fifo (struct net_device*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;

void rtl8185b_rx_enable(struct net_device *dev)
{
 u8 cmd;


 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);

 if (dev->flags & IFF_PROMISC) DMESG ("NIC in promisc mode");

 if(priv->ieee80211->iw_mode == IW_MODE_MONITOR || dev->flags & IFF_PROMISC){

     priv->ReceiveConfig = priv->ReceiveConfig & (~RCR_APM);
  priv->ReceiveConfig = priv->ReceiveConfig | RCR_AAP;
 }






 if(priv->ieee80211->iw_mode == IW_MODE_MONITOR){
  priv->ReceiveConfig = priv->ReceiveConfig | RCR_ACF | RCR_APWRMGT | RCR_AICV;
 }

 if( priv->crcmon == 1 && priv->ieee80211->iw_mode == IW_MODE_MONITOR)
  priv->ReceiveConfig = priv->ReceiveConfig | RCR_ACRC32;

 write_nic_dword(dev, RCR, priv->ReceiveConfig);

 fix_rx_fifo(dev);




 cmd=read_nic_byte(dev,CMD);
 write_nic_byte(dev,CMD,cmd | (1<<CMD_RX_ENABLE_SHIFT));

}
