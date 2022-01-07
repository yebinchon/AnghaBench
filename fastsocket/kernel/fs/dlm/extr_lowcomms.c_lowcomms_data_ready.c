
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct connection {int rwork; int flags; } ;


 int CF_READ_PENDING ;
 int queue_work (int ,int *) ;
 int recv_workqueue ;
 struct connection* sock2con (struct sock*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void lowcomms_data_ready(struct sock *sk, int count_unused)
{
 struct connection *con = sock2con(sk);
 if (con && !test_and_set_bit(CF_READ_PENDING, &con->flags))
  queue_work(recv_workqueue, &con->rwork);
}
