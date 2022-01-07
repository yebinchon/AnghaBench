
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int * tx_pending; } ;
struct net_device {int dummy; } ;


 int MAX_TX_URB ;
 int atomic_read (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

short check_nic_enough_desc(struct net_device *dev,int queue_index)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int used = atomic_read(&priv->tx_pending[queue_index]);

 return (used < MAX_TX_URB);
}
