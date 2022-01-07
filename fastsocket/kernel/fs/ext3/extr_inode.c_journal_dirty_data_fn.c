
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int ext3_journal_dirty_data (int *,struct buffer_head*) ;

__attribute__((used)) static int journal_dirty_data_fn(handle_t *handle, struct buffer_head *bh)
{




 if (buffer_mapped(bh) && buffer_uptodate(bh))
  return ext3_journal_dirty_data(handle, bh);
 return 0;
}
