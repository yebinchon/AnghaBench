
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {TYPE_2__* ieee80211; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_3__ {int* bssid; } ;
struct TYPE_4__ {scalar_t__ pairwise_key_type; scalar_t__ iw_mode; scalar_t__ group_key_type; TYPE_1__ current_network; } ;


 int COMP_SEC ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ KEY_TYPE_CCMP ;
 scalar_t__ KEY_TYPE_TKIP ;
 scalar_t__ KEY_TYPE_WEP104 ;
 scalar_t__ KEY_TYPE_WEP40 ;
 int RT_TRACE (int ,char*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int setKey (struct net_device*,int,int,scalar_t__,int*,int ,int *) ;

void
CamRestoreAllEntry( struct net_device *dev)
{
 u8 EntryId = 0;
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8* MacAddr = priv->ieee80211->current_network.bssid;

 static u8 CAM_CONST_ADDR[4][6] = {
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x01},
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x02},
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x03}};
 static u8 CAM_CONST_BROAD[] =
  {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};

 RT_TRACE(COMP_SEC, "CamRestoreAllEntry: \n");


 if ((priv->ieee80211->pairwise_key_type == KEY_TYPE_WEP40)||
     (priv->ieee80211->pairwise_key_type == KEY_TYPE_WEP104))
 {

  for(EntryId=0; EntryId<4; EntryId++)
  {
   {
    MacAddr = CAM_CONST_ADDR[EntryId];
    setKey(dev,
      EntryId ,
      EntryId,
      priv->ieee80211->pairwise_key_type,
      MacAddr,
      0,
      ((void*)0));
   }
  }

 }
 else if(priv->ieee80211->pairwise_key_type == KEY_TYPE_TKIP)
 {

  {
   if(priv->ieee80211->iw_mode == IW_MODE_ADHOC)
    setKey(dev,
      4,
      0,
      priv->ieee80211->pairwise_key_type,
      (u8*)dev->dev_addr,
      0,
      ((void*)0));
   else
    setKey(dev,
      4,
      0,
      priv->ieee80211->pairwise_key_type,
      MacAddr,
      0,
      ((void*)0));
  }
 }
 else if(priv->ieee80211->pairwise_key_type == KEY_TYPE_CCMP)
 {

  {
   if(priv->ieee80211->iw_mode == IW_MODE_ADHOC)
    setKey(dev,
      4,
      0,
      priv->ieee80211->pairwise_key_type,
      (u8*)dev->dev_addr,
      0,
      ((void*)0));
   else
    setKey(dev,
      4,
      0,
      priv->ieee80211->pairwise_key_type,
      MacAddr,
      0,
      ((void*)0));
  }
 }



 if(priv->ieee80211->group_key_type == KEY_TYPE_TKIP)
 {
  MacAddr = CAM_CONST_BROAD;
  for(EntryId=1 ; EntryId<4 ; EntryId++)
  {
   {
    setKey(dev,
      EntryId,
      EntryId,
      priv->ieee80211->group_key_type,
      MacAddr,
      0,
      ((void*)0));
   }
  }
  if(priv->ieee80211->iw_mode == IW_MODE_ADHOC)
    setKey(dev,
      0,
      0,
      priv->ieee80211->group_key_type,
      CAM_CONST_ADDR[0],
      0,
      ((void*)0));
 }
 else if(priv->ieee80211->group_key_type == KEY_TYPE_CCMP)
 {
  MacAddr = CAM_CONST_BROAD;
  for(EntryId=1; EntryId<4 ; EntryId++)
  {
   {
    setKey(dev,
      EntryId ,
      EntryId,
      priv->ieee80211->group_key_type,
      MacAddr,
      0,
      ((void*)0));
   }
  }

  if(priv->ieee80211->iw_mode == IW_MODE_ADHOC)
    setKey(dev,
      0 ,
      0,
      priv->ieee80211->group_key_type,
      CAM_CONST_ADDR[0],
      0,
      ((void*)0));
 }
}
