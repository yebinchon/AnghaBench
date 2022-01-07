
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_l2 {void* l2_cid; int l2_bdaddr; int l2_psm; } ;
struct sockaddr {int sa_family; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int src; int dst; } ;
struct TYPE_3__ {int scid; int sport; int dcid; int psm; } ;


 int AF_BLUETOOTH ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int bacpy (int *,int *) ;
 TYPE_2__* bt_sk (struct sock*) ;
 void* cpu_to_le16 (int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int memset (struct sockaddr_l2*,int ,int) ;

__attribute__((used)) static int l2cap_sock_getname(struct socket *sock, struct sockaddr *addr, int *len, int peer)
{
 struct sockaddr_l2 *la = (struct sockaddr_l2 *) addr;
 struct sock *sk = sock->sk;

 BT_DBG("sock %p, sk %p", sock, sk);

 memset(la, 0, sizeof(struct sockaddr_l2));
 addr->sa_family = AF_BLUETOOTH;
 *len = sizeof(struct sockaddr_l2);

 if (peer) {
  la->l2_psm = l2cap_pi(sk)->psm;
  bacpy(&la->l2_bdaddr, &bt_sk(sk)->dst);
  la->l2_cid = cpu_to_le16(l2cap_pi(sk)->dcid);
 } else {
  la->l2_psm = l2cap_pi(sk)->sport;
  bacpy(&la->l2_bdaddr, &bt_sk(sk)->src);
  la->l2_cid = cpu_to_le16(l2cap_pi(sk)->scid);
 }

 return 0;
}
