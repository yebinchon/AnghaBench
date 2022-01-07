
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int swork; int flags; } ;


 int CF_CLOSE ;
 int CF_CONNECT_PENDING ;
 int queue_work (int ,int *) ;
 int send_workqueue ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void lowcomms_connect_sock(struct connection *con)
{
 if (test_bit(CF_CLOSE, &con->flags))
  return;
 if (!test_and_set_bit(CF_CONNECT_PENDING, &con->flags))
  queue_work(send_workqueue, &con->swork);
}
