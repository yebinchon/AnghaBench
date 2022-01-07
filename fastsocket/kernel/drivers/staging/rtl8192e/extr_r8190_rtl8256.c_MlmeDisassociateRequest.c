
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct r8192_priv {int OpMode; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int* bssid; } ;
struct TYPE_6__ {TYPE_1__ current_network; int state; } ;
typedef int RT_OP_MODE ;


 scalar_t__ BSSIDR ;
 int IEEE80211_NOLINK ;
 int MSR ;
 int MSR_LINK_ADHOC ;
 int MSR_LINK_MANAGED ;
 int MSR_LINK_MASTER ;
 int MSR_LINK_NONE ;



 int RT_OP_MODE_NO_LINK ;
 int RemovePeerTS (TYPE_2__*,int*) ;
 int SendDisassociation (TYPE_2__*,int*,int) ;
 int ieee80211_disassociate (TYPE_2__*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int * memcpy (int*,int*,int) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,scalar_t__,int ) ;
 int write_nic_word (struct net_device*,scalar_t__,int ) ;

__attribute__((used)) static void
MlmeDisassociateRequest(
 struct net_device* dev,
 u8* asSta,
 u8 asRsn
 )
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 i;

 RemovePeerTS(priv->ieee80211, asSta);

 SendDisassociation( priv->ieee80211, asSta, asRsn );

 if(memcpy(priv->ieee80211->current_network.bssid,asSta,6) == ((void*)0))
 {


  priv->ieee80211->state = IEEE80211_NOLINK;

  for(i=0;i<6;i++) priv->ieee80211->current_network.bssid[i] = 0x22;


  priv->OpMode = RT_OP_MODE_NO_LINK;
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
  ieee80211_disassociate(priv->ieee80211);

  write_nic_word(dev, BSSIDR, ((u16*)priv->ieee80211->current_network.bssid)[0]);
  write_nic_dword(dev, BSSIDR+2, ((u32*)(priv->ieee80211->current_network.bssid+2))[0]);

 }

}
