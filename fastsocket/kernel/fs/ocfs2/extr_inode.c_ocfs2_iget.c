
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_find_inode_args {unsigned int fi_flags; int fi_sysfile_type; int fi_ino; scalar_t__ fi_blkno; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int EINVAL ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 int IS_ERR (struct inode*) ;
 int I_NEW ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,struct ocfs2_find_inode_args*) ;
 int ino_from_blkno (struct super_block*,scalar_t__) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,unsigned long long) ;
 int mlog_errno (int ) ;
 int mlog_exit_ptr (struct inode*) ;
 int ocfs2_find_actor ;
 int ocfs2_init_locked_inode ;
 int ocfs2_read_locked_inode (struct inode*,struct ocfs2_find_inode_args*) ;
 int unlock_new_inode (struct inode*) ;

struct inode *ocfs2_iget(struct ocfs2_super *osb, u64 blkno, unsigned flags,
    int sysfile_type)
{
 struct inode *inode = ((void*)0);
 struct super_block *sb = osb->sb;
 struct ocfs2_find_inode_args args;

 mlog_entry("(blkno = %llu)\n", (unsigned long long)blkno);




 if (blkno == 0) {
  inode = ERR_PTR(-EINVAL);
  mlog_errno(PTR_ERR(inode));
  goto bail;
 }

 args.fi_blkno = blkno;
 args.fi_flags = flags;
 args.fi_ino = ino_from_blkno(sb, blkno);
 args.fi_sysfile_type = sysfile_type;

 inode = iget5_locked(sb, args.fi_ino, ocfs2_find_actor,
        ocfs2_init_locked_inode, &args);



 if (inode && inode->i_state & I_NEW) {
  mlog(0, "Inode was not in inode cache, reading it.\n");
  ocfs2_read_locked_inode(inode, &args);
  unlock_new_inode(inode);
 }
 if (inode == ((void*)0)) {
  inode = ERR_PTR(-ENOMEM);
  mlog_errno(PTR_ERR(inode));
  goto bail;
 }
 if (is_bad_inode(inode)) {
  iput(inode);
  inode = ERR_PTR(-ESTALE);
  goto bail;
 }

bail:
 if (!IS_ERR(inode)) {
  mlog(0, "returning inode with number %llu\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);
  mlog_exit_ptr(inode);
 }

 return inode;
}
