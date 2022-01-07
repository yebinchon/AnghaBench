
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int ioctx_lock; } ;
struct kioctx {int dead; int wait; int list; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int aio_cancel_all (struct kioctx*) ;
 TYPE_1__* current ;
 int dprintk (char*,struct kioctx*) ;
 int hlist_del_rcu (int *) ;
 scalar_t__ likely (int) ;
 int put_ioctx (struct kioctx*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_all_aios (struct kioctx*) ;
 int wake_up (int *) ;

__attribute__((used)) static void io_destroy(struct kioctx *ioctx)
{
 struct mm_struct *mm = current->mm;
 int was_dead;


 spin_lock(&mm->ioctx_lock);
 was_dead = ioctx->dead;
 ioctx->dead = 1;
 hlist_del_rcu(&ioctx->list);
 spin_unlock(&mm->ioctx_lock);

 dprintk("aio_release(%p)\n", ioctx);
 if (likely(!was_dead))
  put_ioctx(ioctx);

 aio_cancel_all(ioctx);
 wait_for_all_aios(ioctx);






 wake_up(&ioctx->wait);
 put_ioctx(ioctx);
}
