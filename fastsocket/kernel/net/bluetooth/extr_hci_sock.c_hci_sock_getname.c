
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_hci {int hci_dev; int hci_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct hci_dev {int id; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;


 int AF_BLUETOOTH ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int EBADFD ;
 TYPE_1__* hci_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int hci_sock_getname(struct socket *sock, struct sockaddr *addr, int *addr_len, int peer)
{
 struct sockaddr_hci *haddr = (struct sockaddr_hci *) addr;
 struct sock *sk = sock->sk;
 struct hci_dev *hdev = hci_pi(sk)->hdev;

 BT_DBG("sock %p sk %p", sock, sk);

 if (!hdev)
  return -EBADFD;

 lock_sock(sk);

 *addr_len = sizeof(*haddr);
 haddr->hci_family = AF_BLUETOOTH;
 haddr->hci_dev = hdev->id;

 release_sock(sk);
 return 0;
}
