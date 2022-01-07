
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_end_io; } ;


 int end_buffer_write_sync ;
 int submit_bh (int,struct buffer_head*) ;

__attribute__((used)) static void journal_do_submit_data(struct buffer_head **wbuf, int bufs,
       int write_op)
{
 int i;

 for (i = 0; i < bufs; i++) {
  wbuf[i]->b_end_io = end_buffer_write_sync;

  submit_bh(write_op, wbuf[i]);
 }
}
