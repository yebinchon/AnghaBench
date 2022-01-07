
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {int OpMode; int ReceiveConfig; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* bssid; } ;
struct TYPE_5__ {TYPE_1__ current_network; int state; } ;
typedef int RT_OP_MODE ;


 scalar_t__ BSSIDR ;
 int IEEE80211_NOLINK ;
 int MSR ;
 int MSR_LINK_ADHOC ;
 int MSR_LINK_MANAGED ;
 int MSR_LINK_MASTER ;
 int MSR_LINK_NONE ;
 scalar_t__ RCR ;
 int RCR_CBSSID ;



 int RT_OP_MODE_NO_LINK ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_stop_send_beacons (TYPE_2__*) ;
 int notify_wx_assoc_event (TYPE_2__*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,scalar_t__,int) ;
 int write_nic_word (struct net_device*,scalar_t__,int ) ;

__attribute__((used)) static void
MgntDisconnectIBSS(
 struct net_device* dev
)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 u8 i;
 bool bFilterOutNonAssociatedBSSID = 0;



 priv->ieee80211->state = IEEE80211_NOLINK;


 for(i=0;i<6;i++) priv->ieee80211->current_network.bssid[i]= 0x55;
 priv->OpMode = RT_OP_MODE_NO_LINK;
 write_nic_word(dev, BSSIDR, ((u16*)priv->ieee80211->current_network.bssid)[0]);
 write_nic_dword(dev, BSSIDR+2, ((u32*)(priv->ieee80211->current_network.bssid+2))[0]);
 {
   RT_OP_MODE OpMode = priv->OpMode;

   u8 btMsr = read_nic_byte(dev, MSR);

   btMsr &= 0xfc;

   switch(OpMode)
   {
   case 128:
    btMsr |= MSR_LINK_MANAGED;

    break;

   case 129:
    btMsr |= MSR_LINK_ADHOC;

    break;

   case 130:
    btMsr |= MSR_LINK_MASTER;

    break;

   default:
    btMsr |= MSR_LINK_NONE;
    break;
   }

   write_nic_byte(dev, MSR, btMsr);



 }
 ieee80211_stop_send_beacons(priv->ieee80211);


 bFilterOutNonAssociatedBSSID = 0;
 {
   u32 RegRCR, Type;
   Type = bFilterOutNonAssociatedBSSID;
   RegRCR = read_nic_dword(dev,RCR);
   priv->ReceiveConfig = RegRCR;
   if (Type == 1)
    RegRCR |= (RCR_CBSSID);
   else if (Type == 0)
    RegRCR &= (~RCR_CBSSID);

   {
    write_nic_dword(dev, RCR,RegRCR);
    priv->ReceiveConfig = RegRCR;
   }

  }

 notify_wx_assoc_event(priv->ieee80211);

}
