
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int * b_bdev; } ;


 int clear_buffer_delay (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int clear_buffer_req (struct buffer_head*) ;
 int clear_buffer_unwritten (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void discard_buffer(struct buffer_head * bh)
{
 lock_buffer(bh);
 clear_buffer_dirty(bh);
 bh->b_bdev = ((void*)0);
 clear_buffer_mapped(bh);
 clear_buffer_req(bh);
 clear_buffer_new(bh);
 clear_buffer_delay(bh);
 clear_buffer_unwritten(bh);
 unlock_buffer(bh);
}
