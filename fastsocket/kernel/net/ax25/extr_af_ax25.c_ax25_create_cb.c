
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; int reseq_queue; int ack_queue; int frag_queue; int write_queue; int refcount; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_STATE_0 ;
 int GFP_ATOMIC ;
 int atomic_set (int *,int) ;
 int ax25_fillin_cb (TYPE_1__*,int *) ;
 int ax25_setup_timers (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

ax25_cb *ax25_create_cb(void)
{
 ax25_cb *ax25;

 if ((ax25 = kzalloc(sizeof(*ax25), GFP_ATOMIC)) == ((void*)0))
  return ((void*)0);

 atomic_set(&ax25->refcount, 1);

 skb_queue_head_init(&ax25->write_queue);
 skb_queue_head_init(&ax25->frag_queue);
 skb_queue_head_init(&ax25->ack_queue);
 skb_queue_head_init(&ax25->reseq_queue);

 ax25_setup_timers(ax25);

 ax25_fillin_cb(ax25, ((void*)0));

 ax25->state = AX25_STATE_0;

 return ax25;
}
