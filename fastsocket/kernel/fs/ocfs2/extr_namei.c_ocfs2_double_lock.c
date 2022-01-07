
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int ENOENT ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OI_LS_RENAME1 ;
 int OI_LS_RENAME2 ;
 int mlog (int ,char*) ;
 int mlog_entry (char*,unsigned long long,unsigned long long) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_inode_lock_nested (struct inode*,struct buffer_head**,int,int ) ;
 int ocfs2_inode_unlock (struct inode*,int) ;

__attribute__((used)) static int ocfs2_double_lock(struct ocfs2_super *osb,
        struct buffer_head **bh1,
        struct inode *inode1,
        struct buffer_head **bh2,
        struct inode *inode2)
{
 int status;
 struct ocfs2_inode_info *oi1 = OCFS2_I(inode1);
 struct ocfs2_inode_info *oi2 = OCFS2_I(inode2);
 struct buffer_head **tmpbh;
 struct inode *tmpinode;

 mlog_entry("(inode1 = %llu, inode2 = %llu)\n",
     (unsigned long long)oi1->ip_blkno,
     (unsigned long long)oi2->ip_blkno);

 if (*bh1)
  *bh1 = ((void*)0);
 if (*bh2)
  *bh2 = ((void*)0);


 if (oi1->ip_blkno != oi2->ip_blkno) {
  if (oi1->ip_blkno < oi2->ip_blkno) {

   mlog(0, "switching them around...\n");
   tmpbh = bh2;
   bh2 = bh1;
   bh1 = tmpbh;

   tmpinode = inode2;
   inode2 = inode1;
   inode1 = tmpinode;
  }

  status = ocfs2_inode_lock_nested(inode2, bh2, 1,
       OI_LS_RENAME1);
  if (status < 0) {
   if (status != -ENOENT)
    mlog_errno(status);
   goto bail;
  }
 }


 status = ocfs2_inode_lock_nested(inode1, bh1, 1, OI_LS_RENAME2);
 if (status < 0) {




  if (oi1->ip_blkno != oi2->ip_blkno)
   ocfs2_inode_unlock(inode2, 1);

  if (status != -ENOENT)
   mlog_errno(status);
 }

bail:
 mlog_exit(status);
 return status;
}
