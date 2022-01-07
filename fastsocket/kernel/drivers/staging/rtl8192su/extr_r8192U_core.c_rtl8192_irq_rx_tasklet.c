
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_rx_info {int out_pipe; } ;
struct r8192_priv {TYPE_1__* ops; int IrpPendingCount; int skb_queue; } ;
struct TYPE_2__ {int (* rtl819x_rx_cmd ) (struct sk_buff*) ;int (* rtl819x_rx_nomal ) (struct sk_buff*) ;} ;


 int COMP_ERR ;
 int COMP_RECV ;
 int RT_TRACE (int ,char*,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct sk_buff*) ;
 int stub2 (struct sk_buff*) ;

void rtl8192_irq_rx_tasklet(struct r8192_priv *priv)
{
        struct sk_buff *skb;
 struct rtl8192_rx_info *info;

        while (((void*)0) != (skb = skb_dequeue(&priv->skb_queue))) {
  info = (struct rtl8192_rx_info *)skb->cb;
                switch (info->out_pipe) {

   case 3:

    priv->IrpPendingCount--;
    priv->ops->rtl819x_rx_nomal(skb);
    break;


   case 9:
    RT_TRACE(COMP_RECV, "command in-pipe index(%d)\n", info->out_pipe);

    priv->ops->rtl819x_rx_cmd(skb);
    break;

   default:
    RT_TRACE(COMP_ERR, "Unknown in-pipe index(%d)\n", info->out_pipe);

    dev_kfree_skb(skb);
    break;

  }
        }
}
