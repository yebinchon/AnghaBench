
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ircomm_info {int dummy; } ;
struct ircomm_cb {int tsap; } ;


 int P_NORMAL ;
 int irttp_disconnect_request (int ,struct sk_buff*,int ) ;
 int skb_get (struct sk_buff*) ;

__attribute__((used)) static int ircomm_ttp_disconnect_request(struct ircomm_cb *self,
      struct sk_buff *userdata,
      struct ircomm_info *info)
{
 int ret;


 if(userdata)
  skb_get(userdata);

 ret = irttp_disconnect_request(self->tsap, userdata, P_NORMAL);

 return ret;
}
