
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct fuse_conn {int inst_mutex; } ;
struct dentry {int dummy; } ;


 scalar_t__ S_ISDIR (int ) ;
 struct dentry* d_materialise_unique (struct dentry*,struct inode*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct dentry *fuse_materialise_dentry(struct dentry *dentry,
           struct inode *inode)
{
 struct dentry *newent;

 if (inode && S_ISDIR(inode->i_mode)) {
  struct fuse_conn *fc = get_fuse_conn(inode);

  mutex_lock(&fc->inst_mutex);
  newent = d_materialise_unique(dentry, inode);
  mutex_unlock(&fc->inst_mutex);
 } else {
  newent = d_materialise_unique(dentry, inode);
 }

 return newent;
}
