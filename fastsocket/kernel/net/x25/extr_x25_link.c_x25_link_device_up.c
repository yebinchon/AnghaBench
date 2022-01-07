
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int global_facil_mask; int node; int refcnt; int t20; scalar_t__ extended; int state; struct net_device* dev; int t20timer; int queue; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int X25_LINK_STATE_0 ;
 int X25_MASK_PACKET_SIZE ;
 int X25_MASK_REVERSE ;
 int X25_MASK_THROUGHPUT ;
 int X25_MASK_WINDOW_SIZE ;
 int atomic_set (int *,int) ;
 int dev_hold (struct net_device*) ;
 struct x25_neigh* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int skb_queue_head_init (int *) ;
 int sysctl_x25_restart_request_timeout ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;
 int x25_neigh_list ;
 int x25_neigh_list_lock ;
 int x25_t20timer_expiry ;

void x25_link_device_up(struct net_device *dev)
{
 struct x25_neigh *nb = kmalloc(sizeof(*nb), GFP_ATOMIC);

 if (!nb)
  return;

 skb_queue_head_init(&nb->queue);
 setup_timer(&nb->t20timer, x25_t20timer_expiry, (unsigned long)nb);

 dev_hold(dev);
 nb->dev = dev;
 nb->state = X25_LINK_STATE_0;
 nb->extended = 0;



 nb->global_facil_mask = X25_MASK_REVERSE |
           X25_MASK_THROUGHPUT |
           X25_MASK_PACKET_SIZE |
           X25_MASK_WINDOW_SIZE;
 nb->t20 = sysctl_x25_restart_request_timeout;
 atomic_set(&nb->refcnt, 1);

 write_lock_bh(&x25_neigh_list_lock);
 list_add(&nb->node, &x25_neigh_list);
 write_unlock_bh(&x25_neigh_list_lock);
}
