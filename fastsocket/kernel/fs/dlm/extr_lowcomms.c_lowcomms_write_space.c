
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct connection {int swork; int flags; TYPE_2__* sock; } ;
struct TYPE_4__ {int flags; TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_write_pending; } ;


 int CF_APP_LIMITED ;
 int CF_WRITE_PENDING ;
 int SOCK_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int clear_bit (int ,int *) ;
 int queue_work (int ,int *) ;
 int send_workqueue ;
 struct connection* sock2con (struct sock*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void lowcomms_write_space(struct sock *sk)
{
 struct connection *con = sock2con(sk);

 if (!con)
  return;

 clear_bit(SOCK_NOSPACE, &con->sock->flags);

 if (test_and_clear_bit(CF_APP_LIMITED, &con->flags)) {
  con->sock->sk->sk_write_pending--;
  clear_bit(SOCK_ASYNC_NOSPACE, &con->sock->flags);
 }

 if (!test_and_set_bit(CF_WRITE_PENDING, &con->flags))
  queue_work(send_workqueue, &con->swork);
}
