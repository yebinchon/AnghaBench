
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_sco {int sco_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {int src; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ AF_BLUETOOTH ;
 int BDADDR_ANY ;
 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int ) ;
 scalar_t__ BT_OPEN ;
 int EADDRINUSE ;
 int EBADFD ;
 int EINVAL ;
 scalar_t__ __sco_get_sock_by_addr (int *) ;
 scalar_t__ bacmp (int *,int ) ;
 int bacpy (int *,int *) ;
 int batostr (int *) ;
 TYPE_2__* bt_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 TYPE_1__ sco_sk_list ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int sco_sock_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
{
 struct sockaddr_sco *sa = (struct sockaddr_sco *) addr;
 struct sock *sk = sock->sk;
 bdaddr_t *src = &sa->sco_bdaddr;
 int err = 0;

 BT_DBG("sk %p %s", sk, batostr(&sa->sco_bdaddr));

 if (!addr || addr->sa_family != AF_BLUETOOTH)
  return -EINVAL;

 lock_sock(sk);

 if (sk->sk_state != BT_OPEN) {
  err = -EBADFD;
  goto done;
 }

 write_lock_bh(&sco_sk_list.lock);

 if (bacmp(src, BDADDR_ANY) && __sco_get_sock_by_addr(src)) {
  err = -EADDRINUSE;
 } else {

  bacpy(&bt_sk(sk)->src, &sa->sco_bdaddr);
  sk->sk_state = BT_BOUND;
 }

 write_unlock_bh(&sco_sk_list.lock);

done:
 release_sock(sk);
 return err;
}
