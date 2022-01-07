
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int ip_open_lockres; int ip_inode_lockres; int ip_rw_lockres; scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_create_new_lock (struct ocfs2_super*,int *,int,int) ;
 int ocfs2_inode_is_new (struct inode*) ;

int ocfs2_create_new_inode_locks(struct inode *inode)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 BUG_ON(!inode);
 BUG_ON(!ocfs2_inode_is_new(inode));

 mlog_entry_void();

 mlog(0, "Inode %llu\n", (unsigned long long)OCFS2_I(inode)->ip_blkno);
 ret = ocfs2_create_new_lock(osb, &OCFS2_I(inode)->ip_rw_lockres, 1, 1);
 if (ret) {
  mlog_errno(ret);
  goto bail;
 }





 ret = ocfs2_create_new_lock(osb, &OCFS2_I(inode)->ip_inode_lockres, 1, 0);
 if (ret) {
  mlog_errno(ret);
  goto bail;
 }

 ret = ocfs2_create_new_lock(osb, &OCFS2_I(inode)->ip_open_lockres, 0, 0);
 if (ret) {
  mlog_errno(ret);
  goto bail;
 }

bail:
 mlog_exit(ret);
 return ret;
}
