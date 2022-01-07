
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_write_queue; int sk_receive_queue; } ;
struct hci_dev {int promisc; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct socket*,struct sock*) ;
 int atomic_dec (int *) ;
 int bt_sock_unlink (int *,struct sock*) ;
 int hci_dev_put (struct hci_dev*) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int hci_sk_list ;
 int skb_queue_purge (int *) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int hci_sock_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct hci_dev *hdev;

 BT_DBG("sock %p sk %p", sock, sk);

 if (!sk)
  return 0;

 hdev = hci_pi(sk)->hdev;

 bt_sock_unlink(&hci_sk_list, sk);

 if (hdev) {
  atomic_dec(&hdev->promisc);
  hci_dev_put(hdev);
 }

 sock_orphan(sk);

 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_write_queue);

 sock_put(sk);
 return 0;
}
