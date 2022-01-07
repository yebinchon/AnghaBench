
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; int * counter; int * lock_map; } ;
struct super_block {TYPE_1__ s_writers; } ;
typedef scalar_t__ s64 ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int _THIS_IP_ ;
 int finish_wait (int *,int *) ;
 scalar_t__ percpu_counter_sum (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int rwsem_acquire (int *,int ,int ,int ) ;
 int rwsem_release (int *,int,int ) ;
 int sb_has_new_freeze (struct super_block*) ;
 int schedule () ;
 scalar_t__ unlikely (int) ;
 int wait ;

void sb_wait_write(struct super_block *sb, int level)
{
 s64 writers;


 if (unlikely(!sb_has_new_freeze(sb)))
  return;




 rwsem_acquire(&sb->s_writers.lock_map[level-1], 0, 0, _THIS_IP_);
 rwsem_release(&sb->s_writers.lock_map[level-1], 1, _THIS_IP_);

 do {
  DEFINE_WAIT(wait);





  prepare_to_wait(&sb->s_writers.wait, &wait,
    TASK_UNINTERRUPTIBLE);

  writers = percpu_counter_sum(&sb->s_writers.counter[level-1]);
  if (writers)
   schedule();

  finish_wait(&sb->s_writers.wait, &wait);
 } while (writers);
}
