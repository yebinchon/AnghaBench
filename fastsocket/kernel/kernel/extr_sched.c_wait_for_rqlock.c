
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int lock; } ;


 struct rq* raw_rq () ;
 int smp_mb () ;
 int spin_unlock_wait (int *) ;

void wait_for_rqlock(void)
{
 struct rq *rq = raw_rq();
 smp_mb();
 spin_unlock_wait(&rq->lock);
}
