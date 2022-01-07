
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 unsigned int PROC_DYNAMIC_FIRST ;
 unsigned int UINT_MAX ;
 int ida_get_new (int *,unsigned int*) ;
 int ida_pre_get (int *,int ) ;
 int ida_remove (int *,unsigned int) ;
 int proc_inum_ida ;
 int proc_inum_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int proc_alloc_inum(unsigned int *inum)
{
 unsigned int i;
 int error;

retry:
 if (!ida_pre_get(&proc_inum_ida, GFP_KERNEL))
  return -ENOMEM;

 spin_lock_irq(&proc_inum_lock);
 error = ida_get_new(&proc_inum_ida, &i);
 spin_unlock_irq(&proc_inum_lock);
 if (error == -EAGAIN)
  goto retry;
 else if (error)
  return error;

 if (i > UINT_MAX - PROC_DYNAMIC_FIRST) {
  spin_lock_irq(&proc_inum_lock);
  ida_remove(&proc_inum_ida, i);
  spin_unlock_irq(&proc_inum_lock);
  return -ENOSPC;
 }
 *inum = PROC_DYNAMIC_FIRST + i;
 return 0;
}
