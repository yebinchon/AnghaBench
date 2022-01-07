
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sync_buff {scalar_t__ firstuse; } ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 struct ip_vs_sync_buff* curr_sb ;
 int curr_sb_lock ;
 scalar_t__ jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_before (scalar_t__,unsigned long) ;

__attribute__((used)) static inline struct ip_vs_sync_buff *
get_curr_sync_buff(unsigned long time)
{
 struct ip_vs_sync_buff *sb;

 spin_lock_bh(&curr_sb_lock);
 if (curr_sb && (time == 0 ||
   time_before(jiffies - curr_sb->firstuse, time))) {
  sb = curr_sb;
  curr_sb = ((void*)0);
  __set_current_state(TASK_RUNNING);
 } else
  sb = ((void*)0);
 spin_unlock_bh(&curr_sb_lock);
 return sb;
}
