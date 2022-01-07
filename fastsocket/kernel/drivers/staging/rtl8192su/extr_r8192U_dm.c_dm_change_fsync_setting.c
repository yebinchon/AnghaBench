
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct r8192_priv {scalar_t__ framesyncMonitor; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ s32 ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;

extern void
dm_change_fsync_setting(
 struct net_device *dev,
 s32 DM_Type,
 s32 DM_Value)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (DM_Type == 0)
 {
  if(DM_Value > 1)
   DM_Value = 1;
  priv->framesyncMonitor = (u8)DM_Value;

 }
}
