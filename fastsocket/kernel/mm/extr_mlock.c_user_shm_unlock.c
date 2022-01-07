
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {size_t locked_shm; } ;


 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int free_uid (struct user_struct*) ;
 int shmlock_user_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void user_shm_unlock(size_t size, struct user_struct *user)
{
 spin_lock(&shmlock_user_lock);
 user->locked_shm -= (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 spin_unlock(&shmlock_user_lock);
 free_uid(user);
}
