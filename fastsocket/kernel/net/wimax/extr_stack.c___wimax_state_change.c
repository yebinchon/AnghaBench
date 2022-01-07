
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int state; int net_dev; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;


 int BUG () ;
 scalar_t__ WARN_ON (int) ;
 int __check_new_state (int,int,int) ;
 int __wimax_state_set (struct wimax_dev*,int) ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,int,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,int,int) ;
 int dev_err (struct device*,char*,...) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int netif_tx_disable (int ) ;
 int netif_wake_queue (int ) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;
 struct sk_buff* wimax_gnl_re_state_change_alloc (struct wimax_dev*,int,int,void**) ;
 int wimax_gnl_re_state_change_send (struct wimax_dev*,struct sk_buff*,void*) ;

void __wimax_state_change(struct wimax_dev *wimax_dev, enum wimax_st new_state)
{
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 enum wimax_st old_state = wimax_dev->state;
 struct sk_buff *stch_skb;
 void *header;

 d_fnstart(3, dev, "(wimax_dev %p new_state %u [old %u])\n",
    wimax_dev, new_state, old_state);

 if (WARN_ON(new_state >= 130)) {
  dev_err(dev, "SW BUG: requesting invalid state %u\n",
   new_state);
  goto out;
 }
 if (old_state == new_state)
  goto out;
 header = ((void*)0);
 stch_skb = wimax_gnl_re_state_change_alloc(
  wimax_dev, new_state, old_state, &header);


 switch (old_state) {
 case 129:
  __check_new_state(old_state, new_state,
      1 << 135);
  break;
 case 135:
  __check_new_state(old_state, new_state,
      1 << 128
      | 1 << 131
      | 1 << 134);
  break;
 case 128:
  __check_new_state(old_state, new_state, 1 << 135);
  break;
 case 131:
  __check_new_state(old_state, new_state,
      1 << 128
      | 1 << 134);
  break;
 case 134:
  __check_new_state(old_state, new_state,
      1 << 128
      | 1 << 133);
  break;
 case 133:
  __check_new_state(old_state, new_state,
      1 << 128
      | 1 << 134
      | 1 << 132
      | 1 << 136
      | 1 << 137);
  break;
 case 132:
  __check_new_state(old_state, new_state,
      1 << 128
      | 1 << 134
      | 1 << 133
      | 1 << 136
      | 1 << 137);
  break;
 case 136:
  __check_new_state(old_state, new_state,
      1 << 128
      | 1 << 134
      | 1 << 133
      | 1 << 132
      | 1 << 137);
  break;
 case 137:
  __check_new_state(old_state, new_state,
      1 << 128
      | 1 << 134
      | 1 << 133);
  netif_tx_disable(wimax_dev->net_dev);
  netif_carrier_off(wimax_dev->net_dev);
  break;
 case 130:
 default:
  dev_err(dev, "SW BUG: wimax_dev %p is in unknown state %u\n",
   wimax_dev, wimax_dev->state);
  WARN_ON(1);
  goto out;
 }


 switch (new_state) {
 case 129:
  dev_err(dev, "SW BUG: wimax_dev %p entering NULL state "
   "from %u\n", wimax_dev, wimax_dev->state);
  WARN_ON(1);
  break;
 case 135:
  break;
 case 128:
  break;
 case 131:
  break;
 case 134:
  break;
 case 133:
  break;
 case 132:
  break;
 case 136:
  break;
 case 137:
  netif_carrier_on(wimax_dev->net_dev);
  netif_wake_queue(wimax_dev->net_dev);
  break;
 case 130:
 default:
  BUG();
 }
 __wimax_state_set(wimax_dev, new_state);
 if (stch_skb)
  wimax_gnl_re_state_change_send(wimax_dev, stch_skb, header);
out:
 d_fnend(3, dev, "(wimax_dev %p new_state %u [old %u]) = void\n",
  wimax_dev, new_state, old_state);
 return;
}
