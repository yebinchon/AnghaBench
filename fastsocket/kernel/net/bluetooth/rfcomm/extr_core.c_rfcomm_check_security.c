
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rfcomm_dlc {int sec_level; TYPE_2__* session; } ;
typedef int __u8 ;
struct TYPE_8__ {TYPE_3__* conn; } ;
struct TYPE_7__ {int hcon; } ;
struct TYPE_6__ {TYPE_1__* sock; } ;
struct TYPE_5__ {struct sock* sk; } ;




 int HCI_AT_GENERAL_BONDING ;
 int HCI_AT_GENERAL_BONDING_MITM ;
 int HCI_AT_NO_BONDING ;
 int hci_conn_security (int ,int ,int ) ;
 TYPE_4__* l2cap_pi (struct sock*) ;

__attribute__((used)) static inline int rfcomm_check_security(struct rfcomm_dlc *d)
{
 struct sock *sk = d->session->sock->sk;
 __u8 auth_type;

 switch (d->sec_level) {
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

 return hci_conn_security(l2cap_pi(sk)->conn->hcon, d->sec_level,
        auth_type);
}
