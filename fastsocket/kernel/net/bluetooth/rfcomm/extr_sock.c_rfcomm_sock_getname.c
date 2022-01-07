
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_rc {int rc_bdaddr; int rc_channel; int rc_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int src; int dst; } ;
struct TYPE_3__ {int channel; } ;


 int AF_BLUETOOTH ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int bacpy (int *,int *) ;
 TYPE_2__* bt_sk (struct sock*) ;
 int memset (struct sockaddr_rc*,int ,int) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;

__attribute__((used)) static int rfcomm_sock_getname(struct socket *sock, struct sockaddr *addr, int *len, int peer)
{
 struct sockaddr_rc *sa = (struct sockaddr_rc *) addr;
 struct sock *sk = sock->sk;

 BT_DBG("sock %p, sk %p", sock, sk);

 memset(sa, 0, sizeof(*sa));
 sa->rc_family = AF_BLUETOOTH;
 sa->rc_channel = rfcomm_pi(sk)->channel;
 if (peer)
  bacpy(&sa->rc_bdaddr, &bt_sk(sk)->dst);
 else
  bacpy(&sa->rc_bdaddr, &bt_sk(sk)->src);

 *len = sizeof(struct sockaddr_rc);
 return 0;
}
