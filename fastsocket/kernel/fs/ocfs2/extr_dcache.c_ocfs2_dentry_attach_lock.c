
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {int l_name; } ;
struct ocfs2_dentry_lock {scalar_t__ dl_parent_blkno; int dl_count; TYPE_2__ dl_lockres; int dl_inode; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {struct ocfs2_dentry_lock* d_fsdata; TYPE_1__ d_name; } ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int dentry_attach_lock ;
 int dput (struct dentry*) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_dentry_lock*) ;
 struct ocfs2_dentry_lock* kmalloc (int,int ) ;
 int mlog (int ,char*,int ,...) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,unsigned long long,...) ;
 int mlog_errno (int) ;
 int ocfs2_dentry_lock (struct dentry*,int ) ;
 int ocfs2_dentry_lock_res_init (struct ocfs2_dentry_lock*,scalar_t__,struct inode*) ;
 int ocfs2_dentry_unlock (struct dentry*,int ) ;
 struct dentry* ocfs2_find_local_alias (struct inode*,scalar_t__,int ) ;
 int ocfs2_lock_res_free (TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_dentry_attach_lock(struct dentry *dentry,
        struct inode *inode,
        u64 parent_blkno)
{
 int ret;
 struct dentry *alias;
 struct ocfs2_dentry_lock *dl = dentry->d_fsdata;

 mlog(0, "Attach \"%.*s\", parent %llu, fsdata: %p\n",
      dentry->d_name.len, dentry->d_name.name,
      (unsigned long long)parent_blkno, dl);







 if (!inode)
  return 0;

 if (dl) {
  mlog_bug_on_msg(dl->dl_parent_blkno != parent_blkno,
    " \"%.*s\": old parent: %llu, new: %llu\n",
    dentry->d_name.len, dentry->d_name.name,
    (unsigned long long)parent_blkno,
    (unsigned long long)dl->dl_parent_blkno);
  return 0;
 }

 alias = ocfs2_find_local_alias(inode, parent_blkno, 0);
 if (alias) {
  dl = alias->d_fsdata;
  mlog_bug_on_msg(!dl, "parent %llu, ino %llu\n",
    (unsigned long long)parent_blkno,
    (unsigned long long)OCFS2_I(inode)->ip_blkno);

  mlog_bug_on_msg(dl->dl_parent_blkno != parent_blkno,
    " \"%.*s\": old parent: %llu, new: %llu\n",
    dentry->d_name.len, dentry->d_name.name,
    (unsigned long long)parent_blkno,
    (unsigned long long)dl->dl_parent_blkno);

  mlog(0, "Found: %s\n", dl->dl_lockres.l_name);

  goto out_attach;
 }




 dl = kmalloc(sizeof(*dl), GFP_NOFS);
 if (!dl) {
  ret = -ENOMEM;
  mlog_errno(ret);
  return ret;
 }

 dl->dl_count = 0;




 dl->dl_inode = igrab(inode);
 dl->dl_parent_blkno = parent_blkno;
 ocfs2_dentry_lock_res_init(dl, parent_blkno, inode);

out_attach:
 spin_lock(&dentry_attach_lock);
 dentry->d_fsdata = dl;
 dl->dl_count++;
 spin_unlock(&dentry_attach_lock);






 ret = ocfs2_dentry_lock(dentry, 0);
 if (!ret)
  ocfs2_dentry_unlock(dentry, 0);
 else
  mlog_errno(ret);






 if (ret < 0 && !alias) {
  ocfs2_lock_res_free(&dl->dl_lockres);
  BUG_ON(dl->dl_count != 1);
  spin_lock(&dentry_attach_lock);
  dentry->d_fsdata = ((void*)0);
  spin_unlock(&dentry_attach_lock);
  kfree(dl);
  iput(inode);
 }

 dput(alias);

 return ret;
}
