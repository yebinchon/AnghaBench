
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct user_struct {unsigned long locked_shm; } ;
struct TYPE_6__ {TYPE_1__* signal; } ;
struct TYPE_5__ {unsigned long rlim_cur; } ;
struct TYPE_4__ {TYPE_2__* rlim; } ;


 int CAP_IPC_LOCK ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 size_t RLIMIT_MEMLOCK ;
 unsigned long RLIM_INFINITY ;
 int capable (int ) ;
 TYPE_3__* current ;
 int get_uid (struct user_struct*) ;
 int shmlock_user_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int user_shm_lock(size_t size, struct user_struct *user)
{
 unsigned long lock_limit, locked;
 int allowed = 0;

 locked = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 lock_limit = current->signal->rlim[RLIMIT_MEMLOCK].rlim_cur;
 if (lock_limit == RLIM_INFINITY)
  allowed = 1;
 lock_limit >>= PAGE_SHIFT;
 spin_lock(&shmlock_user_lock);
 if (!allowed &&
     locked + user->locked_shm > lock_limit && !capable(CAP_IPC_LOCK))
  goto out;
 get_uid(user);
 user->locked_shm += locked;
 allowed = 1;
out:
 spin_unlock(&shmlock_user_lock);
 return allowed;
}
