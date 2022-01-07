
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int instance; int (* data_indication ) (int ,struct lsap_cb*,struct sk_buff*) ;} ;
struct lsap_cb {TYPE_1__ notify; } ;


 int LMP_HEADER ;
 int skb_get (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int stub1 (int ,struct lsap_cb*,struct sk_buff*) ;

void irlmp_data_indication(struct lsap_cb *self, struct sk_buff *skb)
{

 skb_pull(skb, LMP_HEADER);

 if (self->notify.data_indication) {

  skb_get(skb);
  self->notify.data_indication(self->notify.instance, self, skb);
 }
}
