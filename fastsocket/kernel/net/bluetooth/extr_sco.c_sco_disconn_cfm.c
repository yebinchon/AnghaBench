
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {scalar_t__ type; } ;
typedef int __u8 ;


 int BT_DBG (char*,struct hci_conn*,int ) ;
 scalar_t__ ESCO_LINK ;
 scalar_t__ SCO_LINK ;
 int bt_err (int ) ;
 int sco_conn_del (struct hci_conn*,int ) ;

__attribute__((used)) static int sco_disconn_cfm(struct hci_conn *hcon, __u8 reason)
{
 BT_DBG("hcon %p reason %d", hcon, reason);

 if (hcon->type != SCO_LINK && hcon->type != ESCO_LINK)
  return 0;

 sco_conn_del(hcon, bt_err(reason));

 return 0;
}
