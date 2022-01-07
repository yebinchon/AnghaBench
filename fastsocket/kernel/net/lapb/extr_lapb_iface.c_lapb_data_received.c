
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lapb_cb {int dummy; } ;


 int LAPB_BADTOKEN ;
 int LAPB_OK ;
 int lapb_data_input (struct lapb_cb*,struct sk_buff*) ;
 struct lapb_cb* lapb_devtostruct (struct net_device*) ;
 int lapb_put (struct lapb_cb*) ;

int lapb_data_received(struct net_device *dev, struct sk_buff *skb)
{
 struct lapb_cb *lapb = lapb_devtostruct(dev);
 int rc = LAPB_BADTOKEN;

 if (lapb) {
  lapb_data_input(lapb, skb);
  lapb_put(lapb);
  rc = LAPB_OK;
 }

 return rc;
}
