
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PROC_DYNAMIC_FIRST ;
 int ida_remove (int *,scalar_t__) ;
 int proc_inum_ida ;
 int proc_inum_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void proc_free_inum(unsigned int inum)
{
 unsigned long flags;
 spin_lock_irqsave(&proc_inum_lock, flags);
 ida_remove(&proc_inum_ida, inum - PROC_DYNAMIC_FIRST);
 spin_unlock_irqrestore(&proc_inum_lock, flags);
}
