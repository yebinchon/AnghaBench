
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct TYPE_10__ {TYPE_1__ d_name; } ;
struct TYPE_8__ {TYPE_4__* dentry; int mnt; } ;
struct TYPE_9__ {TYPE_2__ f_path; } ;


 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int nfsd4_list_rec_dir (TYPE_4__*,int ) ;
 int printk (char*,int ) ;
 int purge_old ;
 TYPE_3__* rec_file ;
 int vfs_fsync (TYPE_3__*,TYPE_4__*,int ) ;

void
nfsd4_recdir_purge_old(void) {
 int status;

 if (!rec_file)
  return;
 status = mnt_want_write(rec_file->f_path.mnt);
 if (status)
  goto out;
 status = nfsd4_list_rec_dir(rec_file->f_path.dentry, purge_old);
 if (status == 0)
  vfs_fsync(rec_file, rec_file->f_path.dentry, 0);
 mnt_drop_write(rec_file->f_path.mnt);
out:
 if (status)
  printk("nfsd4: failed to purge old clients from recovery"
   " directory %s\n", rec_file->f_path.dentry->d_name.name);
}
