
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int __end_buffer_read_notouch (struct buffer_head*,int) ;
 int put_bh (struct buffer_head*) ;

void end_buffer_read_sync(struct buffer_head *bh, int uptodate)
{
 __end_buffer_read_notouch(bh, uptodate);
 put_bh(bh);
}
