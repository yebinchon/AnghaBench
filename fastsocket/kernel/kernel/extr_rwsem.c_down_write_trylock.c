
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dep_map; } ;


 int _RET_IP_ ;
 int __down_write_trylock (struct rw_semaphore*) ;
 int rwsem_acquire (int *,int ,int,int ) ;

int down_write_trylock(struct rw_semaphore *sem)
{
 int ret = __down_write_trylock(sem);

 if (ret == 1)
  rwsem_acquire(&sem->dep_map, 0, 1, _RET_IP_);
 return ret;
}
