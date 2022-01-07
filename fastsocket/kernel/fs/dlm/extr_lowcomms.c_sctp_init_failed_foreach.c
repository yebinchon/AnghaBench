
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int swork; int flags; scalar_t__ sctp_assoc; } ;


 int CF_CONNECT_PENDING ;
 int CF_WRITE_PENDING ;
 int queue_work (int ,int *) ;
 int send_workqueue ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void sctp_init_failed_foreach(struct connection *con)
{
 con->sctp_assoc = 0;
 if (test_and_clear_bit(CF_CONNECT_PENDING, &con->flags)) {
  if (!test_and_set_bit(CF_WRITE_PENDING, &con->flags))
   queue_work(send_workqueue, &con->swork);
 }
}
