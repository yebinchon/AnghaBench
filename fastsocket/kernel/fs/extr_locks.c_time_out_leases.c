
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct file_lock* i_flock; } ;
struct file_lock {int fl_type; scalar_t__ fl_break_time; struct file_lock* fl_next; } ;


 int F_INPROGRESS ;
 scalar_t__ IS_LEASE (struct file_lock*) ;
 int jiffies ;
 int lease_modify (struct file_lock**,int) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static void time_out_leases(struct inode *inode)
{
 struct file_lock **before;
 struct file_lock *fl;

 before = &inode->i_flock;
 while ((fl = *before) && IS_LEASE(fl) && (fl->fl_type & F_INPROGRESS)) {
  if ((fl->fl_break_time == 0)
    || time_before(jiffies, fl->fl_break_time)) {
   before = &fl->fl_next;
   continue;
  }
  lease_modify(before, fl->fl_type & ~F_INPROGRESS);
  if (fl == *before)
   before = &fl->fl_next;
 }
}
