
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_sndtimeo; scalar_t__ sk_state; } ;
struct sco_conn {int src; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; } ;
typedef int bdaddr_t ;
struct TYPE_2__ {int dst; int src; } ;


 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int ) ;
 int BT_SECURITY_LOW ;
 int EHOSTUNREACH ;
 int ENOMEM ;
 int ESCO_LINK ;
 int HCI_AT_NO_BONDING ;
 int SCO_LINK ;
 int bacpy (int *,int ) ;
 int batostr (int *) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int disable_esco ;
 int hci_conn_put (struct hci_conn*) ;
 struct hci_conn* hci_connect (struct hci_dev*,int,int *,int ,int ) ;
 int hci_dev_lock_bh (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_unlock_bh (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *) ;
 scalar_t__ lmp_esco_capable (struct hci_dev*) ;
 int sco_chan_add (struct sco_conn*,struct sock*,int *) ;
 struct sco_conn* sco_conn_add (struct hci_conn*,int ) ;
 int sco_sock_clear_timer (struct sock*) ;
 int sco_sock_set_timer (struct sock*,int ) ;

__attribute__((used)) static int sco_connect(struct sock *sk)
{
 bdaddr_t *src = &bt_sk(sk)->src;
 bdaddr_t *dst = &bt_sk(sk)->dst;
 struct sco_conn *conn;
 struct hci_conn *hcon;
 struct hci_dev *hdev;
 int err, type;

 BT_DBG("%s -> %s", batostr(src), batostr(dst));

 if (!(hdev = hci_get_route(dst, src)))
  return -EHOSTUNREACH;

 hci_dev_lock_bh(hdev);

 err = -ENOMEM;

 if (lmp_esco_capable(hdev) && !disable_esco)
  type = ESCO_LINK;
 else
  type = SCO_LINK;

 hcon = hci_connect(hdev, type, dst, BT_SECURITY_LOW, HCI_AT_NO_BONDING);
 if (!hcon)
  goto done;

 conn = sco_conn_add(hcon, 0);
 if (!conn) {
  hci_conn_put(hcon);
  goto done;
 }


 bacpy(src, conn->src);

 err = sco_chan_add(conn, sk, ((void*)0));
 if (err)
  goto done;

 if (hcon->state == BT_CONNECTED) {
  sco_sock_clear_timer(sk);
  sk->sk_state = BT_CONNECTED;
 } else {
  sk->sk_state = BT_CONNECT;
  sco_sock_set_timer(sk, sk->sk_sndtimeo);
 }

done:
 hci_dev_unlock_bh(hdev);
 hci_dev_put(hdev);
 return err;
}
