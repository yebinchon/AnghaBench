
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ IS_SYNC (struct inode*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static inline void dirty_indirect(struct buffer_head *bh, struct inode *inode)
{
 mark_buffer_dirty_inode(bh, inode);
 if (IS_SYNC(inode))
  sync_dirty_buffer(bh);
}
