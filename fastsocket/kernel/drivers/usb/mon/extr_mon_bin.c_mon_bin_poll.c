
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct mon_reader_bin {int b_lock; int b_wait; } ;
struct file {int f_mode; struct mon_reader_bin* private_data; } ;


 int FMODE_READ ;
 int MON_RING_EMPTY (struct mon_reader_bin*) ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
mon_bin_poll(struct file *file, struct poll_table_struct *wait)
{
 struct mon_reader_bin *rp = file->private_data;
 unsigned int mask = 0;
 unsigned long flags;

 if (file->f_mode & FMODE_READ)
  poll_wait(file, &rp->b_wait, wait);

 spin_lock_irqsave(&rp->b_lock, flags);
 if (!MON_RING_EMPTY(rp))
  mask |= POLLIN | POLLRDNORM;
 spin_unlock_irqrestore(&rp->b_lock, flags);
 return mask;
}
