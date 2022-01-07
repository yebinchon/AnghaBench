
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_page; } ;


 int __set_page_dirty_nobuffers (int ) ;
 int buffer_dirty (struct buffer_head*) ;
 int test_set_buffer_dirty (struct buffer_head*) ;

void nilfs_mark_buffer_dirty(struct buffer_head *bh)
{
 if (!buffer_dirty(bh) && !test_set_buffer_dirty(bh))
  __set_page_dirty_nobuffers(bh->b_page);
}
