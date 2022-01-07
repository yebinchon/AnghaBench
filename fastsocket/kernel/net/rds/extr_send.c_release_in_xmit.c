
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_waitq; int c_flags; } ;


 int RDS_IN_XMIT ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void release_in_xmit(struct rds_connection *conn)
{
 clear_bit(RDS_IN_XMIT, &conn->c_flags);
 smp_mb__after_clear_bit();






 if (waitqueue_active(&conn->c_waitq))
  wake_up_all(&conn->c_waitq);
}
