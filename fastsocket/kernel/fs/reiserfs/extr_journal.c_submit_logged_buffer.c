
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int BUG () ;
 int WRITE ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_journal_new (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int reiserfs_end_buffer_io_sync ;
 int submit_bh (int ,struct buffer_head*) ;
 int test_clear_buffer_journal_test (struct buffer_head*) ;

__attribute__((used)) static void submit_logged_buffer(struct buffer_head *bh)
{
 get_bh(bh);
 bh->b_end_io = reiserfs_end_buffer_io_sync;
 clear_buffer_journal_new(bh);
 clear_buffer_dirty(bh);
 if (!test_clear_buffer_journal_test(bh))
  BUG();
 if (!buffer_uptodate(bh))
  BUG();
 submit_bh(WRITE, bh);
}
