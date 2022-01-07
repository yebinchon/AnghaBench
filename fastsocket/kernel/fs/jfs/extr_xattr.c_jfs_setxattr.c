
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tid_t ;
struct jfs_inode_info {int commit_mutex; } ;
struct inode {int i_sb; } ;
struct dentry {struct inode* d_inode; } ;


 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int __jfs_setxattr (int ,struct inode*,char const*,void const*,size_t,int) ;
 int can_set_xattr (struct inode*,char const*,void const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;

int jfs_setxattr(struct dentry *dentry, const char *name, const void *value,
   size_t value_len, int flags)
{
 struct inode *inode = dentry->d_inode;
 struct jfs_inode_info *ji = JFS_IP(inode);
 int rc;
 tid_t tid;

 if ((rc = can_set_xattr(inode, name, value, value_len)))
  return rc;

 if (value == ((void*)0)) {
  value = "";
  value_len = 0;
 }

 tid = txBegin(inode->i_sb, 0);
 mutex_lock(&ji->commit_mutex);
 rc = __jfs_setxattr(tid, dentry->d_inode, name, value, value_len,
       flags);
 if (!rc)
  rc = txCommit(tid, 1, &inode, 0);
 txEnd(tid);
 mutex_unlock(&ji->commit_mutex);

 return rc;
}
