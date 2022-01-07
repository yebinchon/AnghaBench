
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_buffer_head {unsigned int count; int * bh; } ;


 int WRITE ;
 int wait_on_buffer (int ) ;
 int write_dirty_buffer (int ,int ) ;

void ubh_sync_block(struct ufs_buffer_head *ubh)
{
 if (ubh) {
  unsigned i;

  for (i = 0; i < ubh->count; i++)
   write_dirty_buffer(ubh->bh[i], WRITE);

  for (i = 0; i < ubh->count; i++)
   wait_on_buffer(ubh->bh[i]);
 }
}
