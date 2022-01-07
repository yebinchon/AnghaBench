
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frozen; int * counter; int wait_unfrozen; } ;
struct super_block {TYPE_1__ s_writers; } ;


 int _RET_IP_ ;
 int __sb_end_write (struct super_block*,int) ;
 int acquire_freeze_lock (struct super_block*,int,int,int ) ;
 int percpu_counter_inc (int *) ;
 int sb_has_new_freeze (struct super_block*) ;
 int smp_mb () ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int) ;

int __sb_start_write(struct super_block *sb, int level, bool wait)
{

 if (unlikely(!sb_has_new_freeze(sb)))
  return 1;
retry:
 if (unlikely(sb->s_writers.frozen >= level)) {
  if (!wait)
   return 0;
  wait_event(sb->s_writers.wait_unfrozen,
      sb->s_writers.frozen < level);
 }




 percpu_counter_inc(&sb->s_writers.counter[level-1]);




 smp_mb();
 if (unlikely(sb->s_writers.frozen >= level)) {
  __sb_end_write(sb, level);
  goto retry;
 }
 return 1;
}
