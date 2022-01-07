
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct irlap_cb {int dummy; } ;


 int PI_ADD_BOFS ;
 int PI_BAUD_RATE ;
 int PI_DATA_SIZE ;
 int PI_LINK_DISC ;
 int PI_MAX_TURN_TIME ;
 int PI_MIN_TURN_TIME ;
 int PI_WINDOW_SIZE ;
 int irda_param_insert (struct irlap_cb*,int ,int ,int ,int *) ;
 int irlap_param_info ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

int irlap_insert_qos_negotiation_params(struct irlap_cb *self,
     struct sk_buff *skb)
{
 int ret;


 ret = irda_param_insert(self, PI_BAUD_RATE, skb_tail_pointer(skb),
    skb_tailroom(skb), &irlap_param_info);
 if (ret < 0)
  return ret;
 skb_put(skb, ret);


 ret = irda_param_insert(self, PI_MAX_TURN_TIME, skb_tail_pointer(skb),
    skb_tailroom(skb), &irlap_param_info);
 if (ret < 0)
  return ret;
 skb_put(skb, ret);


 ret = irda_param_insert(self, PI_DATA_SIZE, skb_tail_pointer(skb),
    skb_tailroom(skb), &irlap_param_info);
 if (ret < 0)
  return ret;
 skb_put(skb, ret);


 ret = irda_param_insert(self, PI_WINDOW_SIZE, skb_tail_pointer(skb),
    skb_tailroom(skb), &irlap_param_info);
 if (ret < 0)
  return ret;
 skb_put(skb, ret);


 ret = irda_param_insert(self, PI_ADD_BOFS, skb_tail_pointer(skb),
    skb_tailroom(skb), &irlap_param_info);
 if (ret < 0)
  return ret;
 skb_put(skb, ret);


 ret = irda_param_insert(self, PI_MIN_TURN_TIME, skb_tail_pointer(skb),
    skb_tailroom(skb), &irlap_param_info);
 if (ret < 0)
  return ret;
 skb_put(skb, ret);


 ret = irda_param_insert(self, PI_LINK_DISC, skb_tail_pointer(skb),
    skb_tailroom(skb), &irlap_param_info);
 if (ret < 0)
  return ret;
 skb_put(skb, ret);

 return 0;
}
