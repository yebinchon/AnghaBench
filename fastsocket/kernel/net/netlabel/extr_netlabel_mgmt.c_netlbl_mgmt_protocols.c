
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; } ;
struct netlink_callback {int* args; } ;


 int NETLBL_NLTYPE_CIPSOV4 ;
 int NETLBL_NLTYPE_UNLABELED ;
 scalar_t__ netlbl_mgmt_protocols_cb (struct sk_buff*,struct netlink_callback*,int ) ;

__attribute__((used)) static int netlbl_mgmt_protocols(struct sk_buff *skb,
     struct netlink_callback *cb)
{
 u32 protos_sent = cb->args[0];

 if (protos_sent == 0) {
  if (netlbl_mgmt_protocols_cb(skb,
          cb,
          NETLBL_NLTYPE_UNLABELED) < 0)
   goto protocols_return;
  protos_sent++;
 }
 if (protos_sent == 1) {
  if (netlbl_mgmt_protocols_cb(skb,
          cb,
          NETLBL_NLTYPE_CIPSOV4) < 0)
   goto protocols_return;
  protos_sent++;
 }

protocols_return:
 cb->args[0] = protos_sent;
 return skb->len;
}
