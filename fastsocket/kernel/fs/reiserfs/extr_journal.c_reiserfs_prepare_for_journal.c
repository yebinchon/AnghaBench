
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int prepare; } ;


 int PROC_INFO_INC (struct super_block*,int ) ;
 scalar_t__ buffer_journal_dirty (struct buffer_head*) ;
 int clear_buffer_journal_test (struct buffer_head*) ;
 TYPE_1__ journal ;
 int lock_buffer (struct buffer_head*) ;
 int set_buffer_journal_prepared (struct buffer_head*) ;
 int set_buffer_journal_restore_dirty (struct buffer_head*) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 int trylock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

int reiserfs_prepare_for_journal(struct super_block *sb,
     struct buffer_head *bh, int wait)
{
 PROC_INFO_INC(sb, journal.prepare);

 if (!trylock_buffer(bh)) {
  if (!wait)
   return 0;
  lock_buffer(bh);
 }
 set_buffer_journal_prepared(bh);
 if (test_clear_buffer_dirty(bh) && buffer_journal_dirty(bh)) {
  clear_buffer_journal_test(bh);
  set_buffer_journal_restore_dirty(bh);
 }
 unlock_buffer(bh);
 return 1;
}
