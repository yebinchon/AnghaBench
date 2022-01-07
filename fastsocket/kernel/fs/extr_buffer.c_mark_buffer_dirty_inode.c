
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {struct address_space* i_mapping; } ;
struct buffer_head {struct address_space* b_assoc_map; int b_assoc_buffers; TYPE_1__* b_page; } ;
struct address_space {int private_lock; int private_list; struct address_space* assoc_mapping; } ;
struct TYPE_2__ {struct address_space* mapping; } ;


 int BUG_ON (int) ;
 int list_move_tail (int *,int *) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mark_buffer_dirty_inode(struct buffer_head *bh, struct inode *inode)
{
 struct address_space *mapping = inode->i_mapping;
 struct address_space *buffer_mapping = bh->b_page->mapping;

 mark_buffer_dirty(bh);
 if (!mapping->assoc_mapping) {
  mapping->assoc_mapping = buffer_mapping;
 } else {
  BUG_ON(mapping->assoc_mapping != buffer_mapping);
 }
 if (!bh->b_assoc_map) {
  spin_lock(&buffer_mapping->private_lock);
  list_move_tail(&bh->b_assoc_buffers,
    &mapping->private_list);
  bh->b_assoc_map = mapping;
  spin_unlock(&buffer_mapping->private_lock);
 }
}
