
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs4_client {int cl_recdir; scalar_t__ cl_firststate; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int mnt; int dentry; } ;
struct TYPE_5__ {TYPE_1__ f_path; } ;


 scalar_t__ HEXDIR_LEN ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int nfs4_reset_creds (struct cred const*) ;
 int nfs4_save_creds (struct cred const**) ;
 int nfsd4_unlink_clid_dir (int ,scalar_t__) ;
 int printk (char*,scalar_t__,int ) ;
 TYPE_2__* rec_file ;
 int vfs_fsync (TYPE_2__*,int ,int ) ;

void
nfsd4_remove_clid_dir(struct nfs4_client *clp)
{
 const struct cred *original_cred;
 int status;

 if (!rec_file || !clp->cl_firststate)
  return;

 status = mnt_want_write(rec_file->f_path.mnt);
 if (status)
  goto out;
 clp->cl_firststate = 0;

 status = nfs4_save_creds(&original_cred);
 if (status < 0)
  goto out;

 status = nfsd4_unlink_clid_dir(clp->cl_recdir, HEXDIR_LEN-1);
 nfs4_reset_creds(original_cred);
 if (status == 0)
  vfs_fsync(rec_file, rec_file->f_path.dentry, 0);
 mnt_drop_write(rec_file->f_path.mnt);
out:
 if (status)
  printk("NFSD: Failed to remove expired client state directory"
    " %.*s\n", HEXDIR_LEN, clp->cl_recdir);
 return;
}
