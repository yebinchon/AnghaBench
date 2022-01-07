
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs4_client {char* cl_recdir; int cl_firststate; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {int mnt; struct dentry* dentry; } ;
struct TYPE_7__ {TYPE_1__ f_path; } ;
struct TYPE_6__ {int i_mutex; } ;


 int EEXIST ;
 scalar_t__ HEXDIR_LEN ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IRWXU ;
 int dprintk (char*,...) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char*,struct dentry*,scalar_t__) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs4_reset_creds (struct cred const*) ;
 int nfs4_save_creds (struct cred const**) ;
 TYPE_3__* rec_file ;
 int vfs_fsync (TYPE_3__*,struct dentry*,int ) ;
 int vfs_mkdir (TYPE_2__*,struct dentry*,int ) ;

int
nfsd4_create_clid_dir(struct nfs4_client *clp)
{
 const struct cred *original_cred;
 char *dname = clp->cl_recdir;
 struct dentry *dir, *dentry;
 int status;

 dprintk("NFSD: nfsd4_create_clid_dir for \"%s\"\n", dname);

 if (!rec_file || clp->cl_firststate)
  return 0;

 status = nfs4_save_creds(&original_cred);
 if (status < 0)
  return status;

 status = mnt_want_write(rec_file->f_path.mnt);
 if (status)
  return status;

 dir = rec_file->f_path.dentry;

 mutex_lock(&dir->d_inode->i_mutex);

 dentry = lookup_one_len(dname, dir, HEXDIR_LEN-1);
 if (IS_ERR(dentry)) {
  status = PTR_ERR(dentry);
  goto out_unlock;
 }
 status = -EEXIST;
 if (dentry->d_inode) {
  dprintk("NFSD: nfsd4_create_clid_dir: DIRECTORY EXISTS\n");
  goto out_put;
 }
 status = vfs_mkdir(dir->d_inode, dentry, S_IRWXU);
out_put:
 dput(dentry);
out_unlock:
 mutex_unlock(&dir->d_inode->i_mutex);
 if (status == 0) {
  clp->cl_firststate = 1;
  vfs_fsync(rec_file, rec_file->f_path.dentry, 0);
 }
 mnt_drop_write(rec_file->f_path.mnt);
 nfs4_reset_creds(original_cred);
 dprintk("NFSD: nfsd4_create_clid_dir returns %d\n", status);
 return status;
}
