
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_ethernet {TYPE_1__* tx_free_list; } ;
struct TYPE_2__ {int lock; } ;


 int __skb_dequeue (TYPE_1__*) ;
 int dev_kfree_skb (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void cvm_oct_free_tx_skbs(struct octeon_ethernet *priv,
     int skb_to_free,
     int qos, int take_lock)
{

 if (skb_to_free > 0) {
  if (take_lock)
   spin_lock(&priv->tx_free_list[qos].lock);
  while (skb_to_free > 0) {
   dev_kfree_skb(__skb_dequeue(&priv->tx_free_list[qos]));
   skb_to_free--;
  }
  if (take_lock)
   spin_unlock(&priv->tx_free_list[qos].lock);
 }
}
