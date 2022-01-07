
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_hci {scalar_t__ hci_family; scalar_t__ hci_dev; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct hci_dev {int promisc; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;


 scalar_t__ AF_BLUETOOTH ;
 int BT_BOUND ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int EALREADY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ HCI_DEV_NONE ;
 int atomic_inc (int *) ;
 struct hci_dev* hci_dev_get (scalar_t__) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int hci_sock_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
{
 struct sockaddr_hci *haddr = (struct sockaddr_hci *) addr;
 struct sock *sk = sock->sk;
 struct hci_dev *hdev = ((void*)0);
 int err = 0;

 BT_DBG("sock %p sk %p", sock, sk);

 if (!haddr || haddr->hci_family != AF_BLUETOOTH)
  return -EINVAL;

 lock_sock(sk);

 if (hci_pi(sk)->hdev) {
  err = -EALREADY;
  goto done;
 }

 if (haddr->hci_dev != HCI_DEV_NONE) {
  if (!(hdev = hci_dev_get(haddr->hci_dev))) {
   err = -ENODEV;
   goto done;
  }

  atomic_inc(&hdev->promisc);
 }

 hci_pi(sk)->hdev = hdev;
 sk->sk_state = BT_BOUND;

done:
 release_sock(sk);
 return err;
}
