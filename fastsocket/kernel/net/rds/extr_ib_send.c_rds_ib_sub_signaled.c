
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {int i_signaled_sends; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ atomic_sub_return (int,int *) ;
 int rds_ib_ring_empty_wait ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void rds_ib_sub_signaled(struct rds_ib_connection *ic, int nr)
{
 if ((atomic_sub_return(nr, &ic->i_signaled_sends) == 0) &&
     waitqueue_active(&rds_ib_ring_empty_wait))
  wake_up(&rds_ib_ring_empty_wait);
 BUG_ON(atomic_read(&ic->i_signaled_sends) < 0);
}
