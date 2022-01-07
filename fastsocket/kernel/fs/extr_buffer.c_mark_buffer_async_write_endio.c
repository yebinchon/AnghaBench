
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int * b_end_io; } ;
typedef int bh_end_io_t ;


 int set_buffer_async_write (struct buffer_head*) ;

__attribute__((used)) static void mark_buffer_async_write_endio(struct buffer_head *bh,
       bh_end_io_t *handler)
{
 bh->b_end_io = handler;
 set_buffer_async_write(bh);
}
