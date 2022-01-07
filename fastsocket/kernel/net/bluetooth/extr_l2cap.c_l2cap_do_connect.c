
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int sk_sndtimeo; } ;
struct l2cap_conn {int src; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; } ;
typedef int bdaddr_t ;
typedef int __u8 ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {scalar_t__ psm; int sec_level; } ;


 int ACL_LINK ;
 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int ,scalar_t__) ;

 int const BT_SECURITY_LOW ;

 int const BT_SECURITY_SDP ;
 int EHOSTUNREACH ;
 int ENOMEM ;
 int HCI_AT_DEDICATED_BONDING ;
 int HCI_AT_DEDICATED_BONDING_MITM ;
 int HCI_AT_GENERAL_BONDING ;
 int HCI_AT_GENERAL_BONDING_MITM ;
 int HCI_AT_NO_BONDING ;
 int HCI_AT_NO_BONDING_MITM ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_SEQPACKET ;
 int bacpy (int *,int ) ;
 int batostr (int *) ;
 TYPE_2__* bt_sk (struct sock*) ;
 scalar_t__ cpu_to_le16 (int) ;
 int hci_conn_put (struct hci_conn*) ;
 struct hci_conn* hci_connect (struct hci_dev*,int ,int *,int,int ) ;
 int hci_dev_lock_bh (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_unlock_bh (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *) ;
 int l2cap_chan_add (struct l2cap_conn*,struct sock*,int *) ;
 struct l2cap_conn* l2cap_conn_add (struct hci_conn*,int ) ;
 int l2cap_do_start (struct sock*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_sock_clear_timer (struct sock*) ;
 int l2cap_sock_set_timer (struct sock*,int ) ;

__attribute__((used)) static int l2cap_do_connect(struct sock *sk)
{
 bdaddr_t *src = &bt_sk(sk)->src;
 bdaddr_t *dst = &bt_sk(sk)->dst;
 struct l2cap_conn *conn;
 struct hci_conn *hcon;
 struct hci_dev *hdev;
 __u8 auth_type;
 int err;

 BT_DBG("%s -> %s psm 0x%2.2x", batostr(src), batostr(dst),
       l2cap_pi(sk)->psm);

 hdev = hci_get_route(dst, src);
 if (!hdev)
  return -EHOSTUNREACH;

 hci_dev_lock_bh(hdev);

 err = -ENOMEM;

 if (sk->sk_type == SOCK_RAW) {
  switch (l2cap_pi(sk)->sec_level) {
  case 129:
   auth_type = HCI_AT_DEDICATED_BONDING_MITM;
   break;
  case 128:
   auth_type = HCI_AT_DEDICATED_BONDING;
   break;
  default:
   auth_type = HCI_AT_NO_BONDING;
   break;
  }
 } else if (l2cap_pi(sk)->psm == cpu_to_le16(0x0001)) {
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

 hcon = hci_connect(hdev, ACL_LINK, dst,
     l2cap_pi(sk)->sec_level, auth_type);
 if (!hcon)
  goto done;

 conn = l2cap_conn_add(hcon, 0);
 if (!conn) {
  hci_conn_put(hcon);
  goto done;
 }

 err = 0;


 bacpy(src, conn->src);

 l2cap_chan_add(conn, sk, ((void*)0));

 sk->sk_state = BT_CONNECT;
 l2cap_sock_set_timer(sk, sk->sk_sndtimeo);

 if (hcon->state == BT_CONNECTED) {
  if (sk->sk_type != SOCK_SEQPACKET) {
   l2cap_sock_clear_timer(sk);
   sk->sk_state = BT_CONNECTED;
  } else
   l2cap_do_start(sk);
 }

done:
 hci_dev_unlock_bh(hdev);
 hci_dev_put(hdev);
 return err;
}
