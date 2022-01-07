
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int instance; } ;
struct irlap_cb {TYPE_1__ notify; } ;


 scalar_t__ LAP_ADDR_HEADER ;
 scalar_t__ LAP_CTRL_HEADER ;
 int irlmp_link_data_indication (int ,struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

void irlap_data_indication(struct irlap_cb *self, struct sk_buff *skb,
      int unreliable)
{

 skb_pull(skb, LAP_ADDR_HEADER+LAP_CTRL_HEADER);

 irlmp_link_data_indication(self->notify.instance, skb, unreliable);
}
