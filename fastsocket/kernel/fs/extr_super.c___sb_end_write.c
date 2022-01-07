
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lock_map; int wait; int * counter; } ;
struct super_block {TYPE_1__ s_writers; } ;


 int _RET_IP_ ;
 int percpu_counter_dec (int *) ;
 int rwsem_release (int *,int,int ) ;
 int sb_has_new_freeze (struct super_block*) ;
 int smp_mb () ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void __sb_end_write(struct super_block *sb, int level)
{

 if (unlikely(!sb_has_new_freeze(sb)))
  return;

 percpu_counter_dec(&sb->s_writers.counter[level-1]);




 smp_mb();
 if (waitqueue_active(&sb->s_writers.wait))
  wake_up(&sb->s_writers.wait);
 rwsem_release(&sb->s_writers.lock_map[level-1], 1, _RET_IP_);
}
