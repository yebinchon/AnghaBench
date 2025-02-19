
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct r8192_priv {int short_preamble; int nCur40MhzPrimeSC; int slot_time; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int mode; } ;
struct TYPE_4__ {TYPE_1__* pHTInfo; struct ieee80211_network current_network; } ;
struct TYPE_3__ {int bCurrentRT2RTLongSlotTime; } ;


 int IEEE_G ;
 int IEEE_N_24G ;
 int NON_SHORT_SLOT_TIME ;
 scalar_t__ RRSR ;
 int SHORT_SLOT_TIME ;
 scalar_t__ SLOT_TIME ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_SHORT_SLOT ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

void rtl8192_update_cap(struct net_device* dev, u16 cap)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 struct ieee80211_network *net = &priv->ieee80211->current_network;
 priv->short_preamble = cap & WLAN_CAPABILITY_SHORT_PREAMBLE;


 if(0)
 {
  u8 tmp = 0;
  tmp = ((priv->nCur40MhzPrimeSC) << 5);
  if (priv->short_preamble)
   tmp |= 0x80;
  write_nic_byte(dev, RRSR+2, tmp);
 }

 if (net->mode & (IEEE_G|IEEE_N_24G))
 {
  u8 slot_time = 0;
  if ((cap & WLAN_CAPABILITY_SHORT_SLOT)&&(!priv->ieee80211->pHTInfo->bCurrentRT2RTLongSlotTime))
  {
   slot_time = SHORT_SLOT_TIME;
  }
  else
   slot_time = NON_SHORT_SLOT_TIME;
  priv->slot_time = slot_time;
  write_nic_byte(dev, SLOT_TIME, slot_time);
 }

}
