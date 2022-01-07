
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ iw_mode; } ;


 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ IW_MODE_MASTER ;
 int MSR ;
 int MSR_LINK_ADHOC ;
 int MSR_LINK_MANAGED ;
 int MSR_LINK_MASK ;
 int MSR_LINK_MASTER ;
 int MSR_LINK_NONE ;
 int MSR_LINK_SHIFT ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void rtl8192_update_msr(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 msr;

 msr = read_nic_byte(dev, MSR);
 msr &= ~ MSR_LINK_MASK;






 if (priv->ieee80211->state == IEEE80211_LINKED){

  if (priv->ieee80211->iw_mode == IW_MODE_INFRA)
   msr |= (MSR_LINK_MANAGED<<MSR_LINK_SHIFT);
  else if (priv->ieee80211->iw_mode == IW_MODE_ADHOC)
   msr |= (MSR_LINK_ADHOC<<MSR_LINK_SHIFT);
  else if (priv->ieee80211->iw_mode == IW_MODE_MASTER)
   msr |= (MSR_LINK_MASTER<<MSR_LINK_SHIFT);

 }else
  msr |= (MSR_LINK_NONE<<MSR_LINK_SHIFT);

 write_nic_byte(dev, MSR, msr);
}
