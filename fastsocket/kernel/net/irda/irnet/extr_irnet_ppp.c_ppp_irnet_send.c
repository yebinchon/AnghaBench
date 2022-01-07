
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ppp_channel {scalar_t__ private; } ;
struct irnet_socket {scalar_t__ tx_flow; TYPE_1__* tsap; int ttp_connect; int ttp_open; } ;
typedef struct irnet_socket irnet_socket ;
struct TYPE_2__ {int tx_queue; } ;


 int DABORT (int ,int,int ,char*) ;
 int DASSERT (int ,int ,int ,char*) ;
 int DEBUG (int ,char*,int ,int ) ;
 int DENTER (int ,char*,struct ppp_channel*,struct irnet_socket*) ;
 int DERROR (int ,char*,int) ;
 int DEXIT (int ,char*) ;
 int DRETURN (int ,int ,char*,int ) ;
 scalar_t__ FLOW_START ;
 int PPP_ERROR ;
 int PPP_INFO ;
 int PPP_TRACE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int irda_irnet_connect (struct irnet_socket*) ;
 struct sk_buff* irnet_prepare_skb (struct irnet_socket*,struct sk_buff*) ;
 int irttp_data_request (TYPE_1__*,struct sk_buff*) ;
 int skb_queue_len (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
ppp_irnet_send(struct ppp_channel * chan,
        struct sk_buff * skb)
{
  irnet_socket * self = (struct irnet_socket *) chan->private;
  int ret;

  DENTER(PPP_TRACE, "(channel=0x%p, ap/self=0x%p)\n",
  chan, self);


  DASSERT(self != ((void*)0), 0, PPP_ERROR, "Self is NULL !!!\n");


  if(!(test_bit(0, &self->ttp_open)))
    {
      DEBUG(PPP_INFO, "IrTTP not ready ! (%ld-%ld)\n",
     self->ttp_open, self->ttp_connect);
      dev_kfree_skb(skb);
      return 1;
    }


  if(self->tx_flow != FLOW_START)
    DRETURN(0, PPP_INFO, "IrTTP queue full (%d skbs)...\n",
     skb_queue_len(&self->tsap->tx_queue));


  skb = irnet_prepare_skb(self, skb);
  DABORT(skb == ((void*)0), 1, PPP_ERROR, "Prepare skb for Tx failed.\n");


  ret = irttp_data_request(self->tsap, skb);
  if(ret < 0)
    {
      DERROR(PPP_ERROR, "IrTTP doesn't like this packet !!! (0x%X)\n", ret);

    }

  DEXIT(PPP_TRACE, "\n");
  return 1;
}
