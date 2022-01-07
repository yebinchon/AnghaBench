
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hidp_session {int intr_transmit; int hid; } ;


 int BT_DBG (char*,struct hidp_session*,int ,unsigned char*,int) ;
 int BT_ERR (char*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int hidp_schedule (struct hidp_session*) ;
 int memcpy (int*,unsigned char*,int) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int hidp_queue_report(struct hidp_session *session,
    unsigned char *data, int size)
{
 struct sk_buff *skb;

 BT_DBG("session %p hid %p data %p size %d", session, session->hid, data, size);

 if (!(skb = alloc_skb(size + 1, GFP_ATOMIC))) {
  BT_ERR("Can't allocate memory for new frame");
  return -ENOMEM;
 }

 *skb_put(skb, 1) = 0xa2;
 if (size > 0)
  memcpy(skb_put(skb, size), data, size);

 skb_queue_tail(&session->intr_transmit, skb);

 hidp_schedule(session);

 return 0;
}
