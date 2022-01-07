
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * counter; } ;
struct super_block {TYPE_1__ s_writers; } ;


 int SB_FREEZE_LEVELS ;
 int percpu_counter_destroy (int *) ;
 int sb_has_new_freeze (struct super_block*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void destroy_sb_writers(struct super_block *s)
{
 int i;


 if (unlikely(!sb_has_new_freeze(s)))
  return;

 for (i = 0; i < SB_FREEZE_LEVELS; i++)
  percpu_counter_destroy(&s->s_writers.counter[i]);
}
