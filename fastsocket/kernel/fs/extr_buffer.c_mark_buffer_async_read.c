
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int end_buffer_async_read ;
 int set_buffer_async_read (struct buffer_head*) ;

__attribute__((used)) static void mark_buffer_async_read(struct buffer_head *bh)
{
 bh->b_end_io = end_buffer_async_read;
 set_buffer_async_read(bh);
}
