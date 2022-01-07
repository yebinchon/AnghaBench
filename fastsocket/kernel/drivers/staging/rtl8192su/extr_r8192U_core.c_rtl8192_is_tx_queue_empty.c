
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int * tx_pending; } ;
struct net_device {int dummy; } ;


 int HCCA_QUEUE ;
 int MGNT_QUEUE ;
 int TXCMD_QUEUE ;
 scalar_t__ atomic_read (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*,int,scalar_t__) ;

short rtl8192_is_tx_queue_empty(struct net_device *dev)
{
 int i=0;
 struct r8192_priv *priv = ieee80211_priv(dev);

 for (i=0; i<=MGNT_QUEUE; i++)
 {
  if ((i== TXCMD_QUEUE) || (i == HCCA_QUEUE) )
   continue;
  if (atomic_read(&priv->tx_pending[i]))
  {
   printk("===>tx queue is not empty:%d, %d\n", i, atomic_read(&priv->tx_pending[i]));
   return 0;
  }
 }
 return 1;
}
