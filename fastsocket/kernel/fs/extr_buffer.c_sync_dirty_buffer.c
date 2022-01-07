
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int WRITE_SYNC ;
 int __sync_dirty_buffer (struct buffer_head*,int ) ;

int sync_dirty_buffer(struct buffer_head *bh)
{
 return __sync_dirty_buffer(bh, WRITE_SYNC);
}
