
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int READ ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *__bread_slow(struct buffer_head *bh)
{
 lock_buffer(bh);
 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  return bh;
 } else {
  get_bh(bh);
  bh->b_end_io = end_buffer_read_sync;
  submit_bh(READ, bh);
  wait_on_buffer(bh);
  if (buffer_uptodate(bh))
   return bh;
 }
 brelse(bh);
 return ((void*)0);
}
