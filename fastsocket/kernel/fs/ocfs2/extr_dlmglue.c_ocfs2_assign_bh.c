
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int get_bh (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_assign_bh(struct inode *inode,
      struct buffer_head **ret_bh,
      struct buffer_head *passed_bh)
{
 int status;

 if (passed_bh) {


  *ret_bh = passed_bh;
  get_bh(*ret_bh);

  return 0;
 }

 status = ocfs2_read_inode_block(inode, ret_bh);
 if (status < 0)
  mlog_errno(status);

 return status;
}
