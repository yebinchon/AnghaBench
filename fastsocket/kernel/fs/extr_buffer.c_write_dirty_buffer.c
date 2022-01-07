
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int end_buffer_write_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int submit_bh (int,struct buffer_head*) ;
 int test_clear_buffer_dirty (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

void write_dirty_buffer(struct buffer_head *bh, int rw)
{
 lock_buffer(bh);
 if (!test_clear_buffer_dirty(bh)) {
  unlock_buffer(bh);
  return;
 }
 bh->b_end_io = end_buffer_write_sync;
 get_bh(bh);
 submit_bh(rw, bh);
}
