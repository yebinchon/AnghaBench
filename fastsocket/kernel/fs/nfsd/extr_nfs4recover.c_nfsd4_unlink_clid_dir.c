
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct TYPE_6__ {TYPE_1__ f_path; } ;
struct TYPE_5__ {int i_mutex; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 int dprintk (char*,int,char*) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 TYPE_3__* rec_file ;
 int vfs_rmdir (TYPE_2__*,struct dentry*) ;

__attribute__((used)) static int
nfsd4_unlink_clid_dir(char *name, int namlen)
{
 struct dentry *dir, *dentry;
 int status;

 dprintk("NFSD: nfsd4_unlink_clid_dir. name %.*s\n", namlen, name);

 dir = rec_file->f_path.dentry;
 mutex_lock_nested(&dir->d_inode->i_mutex, I_MUTEX_PARENT);
 dentry = lookup_one_len(name, dir, namlen);
 if (IS_ERR(dentry)) {
  status = PTR_ERR(dentry);
  goto out_unlock;
 }
 status = -ENOENT;
 if (!dentry->d_inode)
  goto out;
 status = vfs_rmdir(dir->d_inode, dentry);
out:
 dput(dentry);
out_unlock:
 mutex_unlock(&dir->d_inode->i_mutex);
 return status;
}
