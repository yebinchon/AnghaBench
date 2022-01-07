
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct input_dev {int led; } ;
struct hidp_session {unsigned char leds; int intr_transmit; } ;


 int BT_DBG (char*,struct hidp_session*,unsigned int,unsigned int,int) ;
 int BT_ERR (char*) ;
 int ENOMEM ;
 unsigned int EV_LED ;
 int GFP_ATOMIC ;
 int HIDP_DATA_RTYPE_OUPUT ;
 int HIDP_TRANS_DATA ;
 int LED_CAPSL ;
 int LED_COMPOSE ;
 int LED_KANA ;
 int LED_NUML ;
 int LED_SCROLLL ;
 struct sk_buff* alloc_skb (int,int ) ;
 int hidp_schedule (struct hidp_session*) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int hidp_queue_event(struct hidp_session *session, struct input_dev *dev,
    unsigned int type, unsigned int code, int value)
{
 unsigned char newleds;
 struct sk_buff *skb;

 BT_DBG("session %p type %d code %d value %d", session, type, code, value);

 if (type != EV_LED)
  return -1;

 newleds = (!!test_bit(LED_KANA, dev->led) << 3) |
    (!!test_bit(LED_COMPOSE, dev->led) << 3) |
    (!!test_bit(LED_SCROLLL, dev->led) << 2) |
    (!!test_bit(LED_CAPSL, dev->led) << 1) |
    (!!test_bit(LED_NUML, dev->led));

 if (session->leds == newleds)
  return 0;

 session->leds = newleds;

 if (!(skb = alloc_skb(3, GFP_ATOMIC))) {
  BT_ERR("Can't allocate memory for new frame");
  return -ENOMEM;
 }

 *skb_put(skb, 1) = HIDP_TRANS_DATA | HIDP_DATA_RTYPE_OUPUT;
 *skb_put(skb, 1) = 0x01;
 *skb_put(skb, 1) = newleds;

 skb_queue_tail(&session->intr_transmit, skb);

 hidp_schedule(session);

 return 0;
}
