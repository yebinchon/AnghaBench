
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct qos_info {int dummy; } ;
struct TYPE_4__ {int rname; int daddr; int saddr; int chan; int ttp_connect; int ttp_open; int tsap; scalar_t__ max_data_size; scalar_t__ max_sdu_size_tx; int max_header_size; } ;
typedef TYPE_1__ irnet_socket ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;


 int DEBUG (int ,char*) ;
 int DENTER (int ,char*,TYPE_1__*) ;
 int DERROR (int ,char*) ;
 int DEXIT (int ,char*) ;
 int IRDA_CB_ERROR ;
 int IRDA_CB_INFO ;
 int IRDA_TCB_TRACE ;
 int IRNET_CONNECT_TO ;
 int clear_bit (int ,int *) ;
 int irnet_data_indication (void*,void*,struct sk_buff*) ;
 int irnet_post_event (TYPE_1__*,int ,int ,int ,int ,int ) ;
 scalar_t__ irttp_get_max_seg_size (int ) ;
 int irttp_get_saddr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ppp_output_wakeup (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
irnet_connect_confirm(void * instance,
        void * sap,
        struct qos_info *qos,
        __u32 max_sdu_size,
        __u8 max_header_size,
        struct sk_buff *skb)
{
  irnet_socket * self = (irnet_socket *) instance;

  DENTER(IRDA_TCB_TRACE, "(self=0x%p)\n", self);


  if(! test_bit(0, &self->ttp_connect))
    {
      DERROR(IRDA_CB_ERROR, "Socket no longer connecting. Ouch !\n");
      return;
    }


  self->max_header_size = max_header_size;


  self->max_sdu_size_tx = max_sdu_size;
  self->max_data_size = max_sdu_size;






  self->saddr = irttp_get_saddr(self->tsap);


  set_bit(0, &self->ttp_open);
  clear_bit(0, &self->ttp_connect);

  ppp_output_wakeup(&self->chan);


  if(skb->len > 0)
    {





      DERROR(IRDA_CB_ERROR, "Dropping non empty packet.\n");
      kfree_skb(skb);

    }
  else
    kfree_skb(skb);


  irnet_post_event(self, IRNET_CONNECT_TO,
     self->saddr, self->daddr, self->rname, 0);

  DEXIT(IRDA_TCB_TRACE, "\n");
}
