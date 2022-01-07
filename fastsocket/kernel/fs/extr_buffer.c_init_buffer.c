
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {void* b_private; int * b_end_io; } ;
typedef int bh_end_io_t ;



inline void
init_buffer(struct buffer_head *bh, bh_end_io_t *handler, void *private)
{
 bh->b_end_io = handler;
 bh->b_private = private;
}
