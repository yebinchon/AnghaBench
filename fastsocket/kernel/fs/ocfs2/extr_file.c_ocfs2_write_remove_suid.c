
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int __ocfs2_write_remove_suid (struct inode*,struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_write_remove_suid(struct inode *inode)
{
 int ret;
 struct buffer_head *bh = ((void*)0);

 ret = ocfs2_read_inode_block(inode, &bh);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = __ocfs2_write_remove_suid(inode, bh);
out:
 brelse(bh);
 return ret;
}
