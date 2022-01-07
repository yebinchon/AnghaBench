
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_blkno; } ;
struct inode {int i_nlink; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_MAYBE_ORPHANED ;
 int generic_delete_inode (struct inode*) ;
 int generic_drop_inode (struct inode*) ;
 int mlog (int ,char*,unsigned long long,int ,int) ;
 int mlog_entry_void () ;
 int mlog_exit_void () ;

void ocfs2_drop_inode(struct inode *inode)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 mlog_entry_void();

 mlog(0, "Drop inode %llu, nlink = %u, ip_flags = 0x%x\n",
      (unsigned long long)oi->ip_blkno, inode->i_nlink, oi->ip_flags);

 if (oi->ip_flags & OCFS2_INODE_MAYBE_ORPHANED)
  generic_delete_inode(inode);
 else
  generic_drop_inode(inode);

 mlog_exit_void();
}
