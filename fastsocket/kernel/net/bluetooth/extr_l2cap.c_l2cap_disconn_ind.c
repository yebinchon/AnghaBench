
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {int disc_reason; } ;
struct hci_conn {scalar_t__ type; struct l2cap_conn* l2cap_data; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,struct hci_conn*) ;

__attribute__((used)) static int l2cap_disconn_ind(struct hci_conn *hcon)
{
 struct l2cap_conn *conn = hcon->l2cap_data;

 BT_DBG("hcon %p", hcon);

 if (hcon->type != ACL_LINK || !conn)
  return 0x13;

 return conn->disc_reason;
}
