
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int bswitch_fsync; int bfsync_processing; } ;
struct net_device {int dummy; } ;


 int dm_bb_initialgain_backup (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void dm_backup_dynamic_mechanism_state(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 priv->bswitch_fsync = 0;
 priv->bfsync_processing = 0;

 dm_bb_initialgain_backup(dev);

}
