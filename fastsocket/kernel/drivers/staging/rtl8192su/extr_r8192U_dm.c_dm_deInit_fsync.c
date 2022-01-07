
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int fsync_timer; } ;
struct net_device {int dummy; } ;


 int del_timer_sync (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_deInit_fsync(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 del_timer_sync(&priv->fsync_timer);
}
