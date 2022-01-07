
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct l2cap_conn {int hcon; } ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ psm; int sec_level; struct l2cap_conn* conn; } ;



 int BT_SECURITY_LOW ;

 int BT_SECURITY_SDP ;
 int HCI_AT_GENERAL_BONDING ;
 int HCI_AT_GENERAL_BONDING_MITM ;
 int HCI_AT_NO_BONDING ;
 int HCI_AT_NO_BONDING_MITM ;
 scalar_t__ cpu_to_le16 (int) ;
 int hci_conn_security (int ,int,int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;

__attribute__((used)) static inline int l2cap_check_security(struct sock *sk)
{
 struct l2cap_conn *conn = l2cap_pi(sk)->conn;
 __u8 auth_type;

 if (l2cap_pi(sk)->psm == cpu_to_le16(0x0001)) {
  if (l2cap_pi(sk)->sec_level == 129)
   auth_type = HCI_AT_NO_BONDING_MITM;
  else
   auth_type = HCI_AT_NO_BONDING;

  if (l2cap_pi(sk)->sec_level == BT_SECURITY_LOW)
   l2cap_pi(sk)->sec_level = BT_SECURITY_SDP;
 } else {
  switch (l2cap_pi(sk)->sec_level) {
  case 129:
   auth_type = HCI_AT_GENERAL_BONDING_MITM;
   break;
  case 128:
   auth_type = HCI_AT_GENERAL_BONDING;
   break;
  default:
   auth_type = HCI_AT_NO_BONDING;
   break;
  }
 }

 return hci_conn_security(conn->hcon, l2cap_pi(sk)->sec_level,
        auth_type);
}
