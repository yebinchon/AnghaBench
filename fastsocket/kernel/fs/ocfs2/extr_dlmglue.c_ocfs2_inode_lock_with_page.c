
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int AOP_TRUNCATED_PAGE ;
 int EAGAIN ;
 int OCFS2_LOCK_NONBLOCK ;
 scalar_t__ ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_lock_full (struct inode*,struct buffer_head**,int,int ) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int unlock_page (struct page*) ;

int ocfs2_inode_lock_with_page(struct inode *inode,
         struct buffer_head **ret_bh,
         int ex,
         struct page *page)
{
 int ret;

 ret = ocfs2_inode_lock_full(inode, ret_bh, ex, OCFS2_LOCK_NONBLOCK);
 if (ret == -EAGAIN) {
  unlock_page(page);
  if (ocfs2_inode_lock(inode, ret_bh, ex) == 0)
   ocfs2_inode_unlock(inode, ex);
  ret = AOP_TRUNCATED_PAGE;
 }

 return ret;
}
