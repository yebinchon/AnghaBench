
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct sco_conn {int dummy; } ;
struct hci_conn {struct sco_conn* sco_data; } ;


 int BT_DBG (char*,struct sco_conn*,scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 int sco_recv_frame (struct sco_conn*,struct sk_buff*) ;

__attribute__((used)) static int sco_recv_scodata(struct hci_conn *hcon, struct sk_buff *skb)
{
 struct sco_conn *conn = hcon->sco_data;

 if (!conn)
  goto drop;

 BT_DBG("conn %p len %d", conn, skb->len);

 if (skb->len) {
  sco_recv_frame(conn, skb);
  return 0;
 }

drop:
 kfree_skb(skb);
 return 0;
}
