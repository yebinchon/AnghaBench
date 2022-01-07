
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int truesize; } ;
struct mpoa_client {TYPE_5__* dev; TYPE_3__* eg_ops; TYPE_2__* in_ops; int * mpoad_vcc; } ;
struct lec_priv {TYPE_1__* lane2_ops; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {int sk_receive_queue; } ;
struct TYPE_9__ {int (* destroy_cache ) (struct mpoa_client*) ;} ;
struct TYPE_8__ {int (* destroy_cache ) (struct mpoa_client*) ;} ;
struct TYPE_7__ {int * associate_indicator; } ;


 int THIS_MODULE ;
 int atm_return (struct atm_vcc*,int ) ;
 int dev_put (TYPE_5__*) ;
 struct mpoa_client* find_mpc_by_vcc (struct atm_vcc*) ;
 int kfree_skb (struct sk_buff*) ;
 int module_put (int ) ;
 struct lec_priv* netdev_priv (TYPE_5__*) ;
 int printk (char*,...) ;
 TYPE_4__* sk_atm (struct atm_vcc*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stop_mpc (struct mpoa_client*) ;
 int stub1 (struct mpoa_client*) ;
 int stub2 (struct mpoa_client*) ;

__attribute__((used)) static void mpoad_close(struct atm_vcc *vcc)
{
 struct mpoa_client *mpc;
 struct sk_buff *skb;

 mpc = find_mpc_by_vcc(vcc);
 if (mpc == ((void*)0)) {
  printk("mpoa: mpoad_close: did not find MPC\n");
  return;
 }
 if (!mpc->mpoad_vcc) {
  printk("mpoa: mpoad_close: close for non-present mpoad\n");
  return;
 }

 mpc->mpoad_vcc = ((void*)0);
 if (mpc->dev) {
  struct lec_priv *priv = netdev_priv(mpc->dev);
  priv->lane2_ops->associate_indicator = ((void*)0);
  stop_mpc(mpc);
  dev_put(mpc->dev);
 }

 mpc->in_ops->destroy_cache(mpc);
 mpc->eg_ops->destroy_cache(mpc);

 while ((skb = skb_dequeue(&sk_atm(vcc)->sk_receive_queue))) {
  atm_return(vcc, skb->truesize);
  kfree_skb(skb);
 }

 printk("mpoa: (%s) going down\n",
  (mpc->dev) ? mpc->dev->name : "<unknown>");
 module_put(THIS_MODULE);

 return;
}
