
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_buffer_head {unsigned int count; int * bh; } ;


 int mark_buffer_dirty (int ) ;

void ubh_mark_buffer_dirty (struct ufs_buffer_head * ubh)
{
 unsigned i;
 if (!ubh)
  return;
 for ( i = 0; i < ubh->count; i++ )
  mark_buffer_dirty (ubh->bh[i]);
}
