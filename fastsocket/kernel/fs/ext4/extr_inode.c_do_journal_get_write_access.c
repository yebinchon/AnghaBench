
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_freed (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int ext4_handle_dirty_metadata (int *,int *,struct buffer_head*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;

__attribute__((used)) static int do_journal_get_write_access(handle_t *handle,
           struct buffer_head *bh)
{
 int dirty = buffer_dirty(bh);
 int ret;

 if (!buffer_mapped(bh) || buffer_freed(bh))
  return 0;
 if (dirty)
  clear_buffer_dirty(bh);
 ret = ext4_journal_get_write_access(handle, bh);
 if (!ret && dirty)
  ret = ext4_handle_dirty_metadata(handle, ((void*)0), bh);
 return ret;
}
