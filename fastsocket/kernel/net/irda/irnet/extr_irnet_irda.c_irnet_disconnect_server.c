
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int tsap; int rname; int daddr; int saddr; } ;
typedef TYPE_1__ irnet_socket ;


 int DENTER (int ,char*,TYPE_1__*) ;
 int DEXIT (int ,char*) ;
 int IRDA_SERV_TRACE ;
 int IRNET_REQUEST_FROM ;
 int P_NORMAL ;
 int irnet_post_event (int *,int ,int ,int ,int ,int ) ;
 int irttp_disconnect_request (int ,int *,int ) ;
 int irttp_listen (int ) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static inline void
irnet_disconnect_server(irnet_socket * self,
   struct sk_buff *skb)
{
  DENTER(IRDA_SERV_TRACE, "(self=0x%p)\n", self);


  kfree_skb(skb);
  irnet_post_event(((void*)0), IRNET_REQUEST_FROM,
     self->saddr, self->daddr, self->rname, 0);


  irttp_listen(self->tsap);

  DEXIT(IRDA_SERV_TRACE, "\n");
  return;
}
