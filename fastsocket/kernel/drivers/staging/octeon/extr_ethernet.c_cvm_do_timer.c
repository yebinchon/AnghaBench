
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct octeon_ethernet {scalar_t__ fau; int * tx_free_list; int (* poll ) (TYPE_2__*) ;} ;
typedef int int32_t ;
struct TYPE_7__ {TYPE_1__* netdev_ops; } ;
struct TYPE_6__ {int (* ndo_get_stats ) (TYPE_2__*) ;} ;


 int CVMX_PIP_NUM_INPUT_PORTS ;
 int HZ ;
 int MAX_SKB_TO_FREE ;
 TYPE_2__** cvm_oct_device ;
 int cvm_oct_free_tx_skbs (struct octeon_ethernet*,int ,int,int) ;
 int cvm_oct_poll_timer ;
 int cvmx_fau_atomic_add32 (scalar_t__,int ) ;
 int cvmx_fau_fetch_and_add32 (scalar_t__,int ) ;
 int cvmx_pko_get_num_queues (int) ;
 int down_trylock (int *) ;
 scalar_t__ jiffies ;
 int mdio_sem ;
 int mod_timer (int *,scalar_t__) ;
 struct octeon_ethernet* netdev_priv (TYPE_2__*) ;
 scalar_t__ skb_queue_len (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int up (int *) ;

__attribute__((used)) static void cvm_do_timer(unsigned long arg)
{
 int32_t skb_to_free, undo;
 int queues_per_port;
 int qos;
 struct octeon_ethernet *priv;
 static int port;

 if (port >= CVMX_PIP_NUM_INPUT_PORTS) {




  port = 0;
  mod_timer(&cvm_oct_poll_timer, jiffies + HZ);
  return;
 }
 if (!cvm_oct_device[port])
  goto out;

 priv = netdev_priv(cvm_oct_device[port]);
 if (priv->poll) {

  if (!down_trylock(&mdio_sem)) {
   priv->poll(cvm_oct_device[port]);
   up(&mdio_sem);
  }
 }

 queues_per_port = cvmx_pko_get_num_queues(port);

 for (qos = 0; qos < queues_per_port; qos++) {
  if (skb_queue_len(&priv->tx_free_list[qos]) == 0)
   continue;
  skb_to_free = cvmx_fau_fetch_and_add32(priv->fau + qos * 4,
             MAX_SKB_TO_FREE);
  undo = skb_to_free > 0 ?
   MAX_SKB_TO_FREE : skb_to_free + MAX_SKB_TO_FREE;
  if (undo > 0)
   cvmx_fau_atomic_add32(priv->fau+qos*4, -undo);
  skb_to_free = -skb_to_free > MAX_SKB_TO_FREE ?
   MAX_SKB_TO_FREE : -skb_to_free;
  cvm_oct_free_tx_skbs(priv, skb_to_free, qos, 1);
 }
 cvm_oct_device[port]->netdev_ops->ndo_get_stats(cvm_oct_device[port]);

out:
 port++;


 mod_timer(&cvm_oct_poll_timer, jiffies + HZ / 50);
}
