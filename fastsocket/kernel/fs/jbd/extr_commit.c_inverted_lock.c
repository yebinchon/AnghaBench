
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct buffer_head {int dummy; } ;
struct TYPE_3__ {int j_list_lock; } ;
typedef TYPE_1__ journal_t ;


 int jbd_trylock_bh_state (struct buffer_head*) ;
 int schedule () ;
 int spin_unlock (int *) ;

__attribute__((used)) static int inverted_lock(journal_t *journal, struct buffer_head *bh)
{
 if (!jbd_trylock_bh_state(bh)) {
  spin_unlock(&journal->j_list_lock);
  schedule();
  return 0;
 }
 return 1;
}
