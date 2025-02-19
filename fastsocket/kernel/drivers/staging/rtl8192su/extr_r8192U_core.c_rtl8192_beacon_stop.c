
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {scalar_t__ card_8192; int * rx_urb; } ;
struct net_device {int dummy; } ;


 size_t MAX_RX_URB ;
 int MSR ;
 int MSR_LINK_ADHOC ;
 int MSR_LINK_MASK ;
 int MSR_LINK_MASTER ;
 int MSR_LINK_NONE ;
 int MSR_LINK_SHIFT ;
 scalar_t__ NIC_8192U ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int usb_kill_urb (int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8192_beacon_stop(struct net_device *dev)
{
 u8 msr, msrm, msr2;
 struct r8192_priv *priv = ieee80211_priv(dev);

 msr = read_nic_byte(dev, MSR);
 msrm = msr & MSR_LINK_MASK;
 msr2 = msr & ~MSR_LINK_MASK;

 if(NIC_8192U == priv->card_8192) {
  usb_kill_urb(priv->rx_urb[MAX_RX_URB]);
 }
 if ((msrm == (MSR_LINK_ADHOC<<MSR_LINK_SHIFT) ||
  (msrm == (MSR_LINK_MASTER<<MSR_LINK_SHIFT)))){
  write_nic_byte(dev, MSR, msr2 | MSR_LINK_NONE);
  write_nic_byte(dev, MSR, msr);
 }
}
