
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_sb; } ;
struct TYPE_3__ {int name; int len; } ;
struct dentry {int * d_op; TYPE_1__ d_name; struct inode* d_inode; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int IS_ERR (struct dentry*) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 struct dentry* d_obtain_alias (int ) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_entry (char*,struct dentry*,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit_ptr (struct dentry*) ;
 int ocfs2_dentry_ops ;
 int ocfs2_iget (int ,int ,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_lookup_ino_from_name (struct inode*,char*,int,int *) ;

__attribute__((used)) static struct dentry *ocfs2_get_parent(struct dentry *child)
{
 int status;
 u64 blkno;
 struct dentry *parent;
 struct inode *dir = child->d_inode;

 mlog_entry("(0x%p, '%.*s')\n", child,
     child->d_name.len, child->d_name.name);

 mlog(0, "find parent of directory %llu\n",
      (unsigned long long)OCFS2_I(dir)->ip_blkno);

 status = ocfs2_inode_lock(dir, ((void*)0), 0);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  parent = ERR_PTR(status);
  goto bail;
 }

 status = ocfs2_lookup_ino_from_name(dir, "..", 2, &blkno);
 if (status < 0) {
  parent = ERR_PTR(-ENOENT);
  goto bail_unlock;
 }

 parent = d_obtain_alias(ocfs2_iget(OCFS2_SB(dir->i_sb), blkno, 0, 0));
 if (!IS_ERR(parent))
  parent->d_op = &ocfs2_dentry_ops;

bail_unlock:
 ocfs2_inode_unlock(dir, 0);

bail:
 mlog_exit_ptr(parent);

 return parent;
}
