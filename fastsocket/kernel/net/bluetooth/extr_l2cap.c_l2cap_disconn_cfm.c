
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_conn {scalar_t__ type; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,struct hci_conn*,int ) ;
 int bt_err (int ) ;
 int l2cap_conn_del (struct hci_conn*,int ) ;

__attribute__((used)) static int l2cap_disconn_cfm(struct hci_conn *hcon, u8 reason)
{
 BT_DBG("hcon %p reason %d", hcon, reason);

 if (hcon->type != ACL_LINK)
  return 0;

 l2cap_conn_del(hcon, bt_err(reason));

 return 0;
}
