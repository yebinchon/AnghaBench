
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int WRITE ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static inline void hfs_buffer_sync(struct buffer_head *bh)
{
 while (buffer_locked(bh)) {
  wait_on_buffer(bh);
 }
 if (buffer_dirty(bh)) {
  ll_rw_block(WRITE, 1, &bh);
  wait_on_buffer(bh);
 }
}
