
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int BUG () ;
 int WRITE ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int reiserfs_end_ordered_io ;
 int submit_bh (int ,struct buffer_head*) ;

__attribute__((used)) static void submit_ordered_buffer(struct buffer_head *bh)
{
 get_bh(bh);
 bh->b_end_io = reiserfs_end_ordered_io;
 clear_buffer_dirty(bh);
 if (!buffer_uptodate(bh))
  BUG();
 submit_bh(WRITE, bh);
}
