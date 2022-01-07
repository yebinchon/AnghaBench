
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct l2cap_conn {int hcon; } ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int hci_send_acl (int ,struct sk_buff*,int ) ;
 struct sk_buff* l2cap_build_cmd (struct l2cap_conn*,int ,int ,int ,void*) ;

__attribute__((used)) static inline int l2cap_send_cmd(struct l2cap_conn *conn, u8 ident, u8 code, u16 len, void *data)
{
 struct sk_buff *skb = l2cap_build_cmd(conn, code, ident, len, data);

 BT_DBG("code 0x%2.2x", code);

 if (!skb)
  return -ENOMEM;

 return hci_send_acl(conn->hcon, skb, 0);
}
