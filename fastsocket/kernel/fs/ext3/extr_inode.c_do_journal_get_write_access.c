
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ buffer_freed (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;

__attribute__((used)) static int do_journal_get_write_access(handle_t *handle,
     struct buffer_head *bh)
{
 if (!buffer_mapped(bh) || buffer_freed(bh))
  return 0;
 return ext3_journal_get_write_access(handle, bh);
}
