
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_free; int j_state_lock; } ;
typedef TYPE_1__ journal_t ;


 scalar_t__ MIN_LOG_RESERVED_BLOCKS ;
 int assert_spin_locked (int *) ;

int __log_space_left(journal_t *journal)
{
 int left = journal->j_free;

 assert_spin_locked(&journal->j_state_lock);
 left -= 32;

 if (left <= 0)
  return 0;
 left -= (left >> 3);
 return left;
}
