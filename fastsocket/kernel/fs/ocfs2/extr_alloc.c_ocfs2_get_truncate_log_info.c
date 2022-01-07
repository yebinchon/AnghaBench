
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EINVAL ;
 int ML_ERROR ;
 int TRUNCATE_LOG_SYSTEM_INODE ;
 int iput (struct inode*) ;
 int mlog (int ,char*) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_get_truncate_log_info(struct ocfs2_super *osb,
           int slot_num,
           struct inode **tl_inode,
           struct buffer_head **tl_bh)
{
 int status;
 struct inode *inode = ((void*)0);
 struct buffer_head *bh = ((void*)0);

 inode = ocfs2_get_system_file_inode(osb,
        TRUNCATE_LOG_SYSTEM_INODE,
        slot_num);
 if (!inode) {
  status = -EINVAL;
  mlog(ML_ERROR, "Could not get load truncate log inode!\n");
  goto bail;
 }

 status = ocfs2_read_inode_block(inode, &bh);
 if (status < 0) {
  iput(inode);
  mlog_errno(status);
  goto bail;
 }

 *tl_inode = inode;
 *tl_bh = bh;
bail:
 mlog_exit(status);
 return status;
}
