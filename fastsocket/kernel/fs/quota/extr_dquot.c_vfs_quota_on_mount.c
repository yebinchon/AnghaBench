
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_2__* s_root; } ;
struct dentry {int d_inode; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mutex; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_USAGE_ENABLED ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char*,TYPE_2__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_quota_on (struct dentry*) ;
 int strlen (char*) ;
 int vfs_load_quota_inode (int ,int,int,int) ;

int vfs_quota_on_mount(struct super_block *sb, char *qf_name,
  int format_id, int type)
{
 struct dentry *dentry;
 int error;

 mutex_lock(&sb->s_root->d_inode->i_mutex);
 dentry = lookup_one_len(qf_name, sb->s_root, strlen(qf_name));
 mutex_unlock(&sb->s_root->d_inode->i_mutex);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);

 if (!dentry->d_inode) {
  error = -ENOENT;
  goto out;
 }

 error = security_quota_on(dentry);
 if (!error)
  error = vfs_load_quota_inode(dentry->d_inode, type, format_id,
    DQUOT_USAGE_ENABLED | DQUOT_LIMITS_ENABLED);

out:
 dput(dentry);
 return error;
}
