
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;


 int __downgrade_write (struct rw_semaphore*) ;

void downgrade_write(struct rw_semaphore *sem)
{




 __downgrade_write(sem);
}
