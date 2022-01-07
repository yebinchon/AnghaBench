
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ncp_server {int dummy; } ;
struct TYPE_9__ {int mode; } ;
struct TYPE_10__ {int dirEntNum; TYPE_4__ nfs; } ;
struct ncp_entry_info {TYPE_5__ i; int volume; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int len; int name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
typedef int __u8 ;
typedef int __name ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 int DPRINTK (char*,int ,int ) ;
 int EACCES ;
 int EIO ;
 int NCP_MAXPATHLEN ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int OC_MODE_CREATE ;
 int S_IFDIR ;
 int aDIR ;
 int cpu_to_le16 (int) ;
 int lock_kernel () ;
 int ncp_age_dentry (struct ncp_server*,struct dentry*) ;
 int ncp_conn_valid (struct ncp_server*) ;
 int ncp_instantiate (struct inode*,struct dentry*,struct ncp_entry_info*) ;
 int ncp_io2vol (struct ncp_server*,int *,int*,int ,int ,int) ;
 scalar_t__ ncp_is_nfs_extras (struct ncp_server*,int ) ;
 scalar_t__ ncp_modify_nfs_info (struct ncp_server*,int ,int ,int,int ) ;
 scalar_t__ ncp_open_create_file_or_subdir (struct ncp_server*,struct inode*,int *,int ,int ,int ,struct ncp_entry_info*) ;
 int ncp_preserve_case (struct inode*) ;
 int unlock_kernel () ;

__attribute__((used)) static int ncp_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct ncp_entry_info finfo;
 struct ncp_server *server = NCP_SERVER(dir);
 int error, len;
 __u8 __name[NCP_MAXPATHLEN + 1];

 DPRINTK("ncp_mkdir: making %s/%s\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);

 error = -EIO;
 lock_kernel();
 if (!ncp_conn_valid(server))
  goto out;

 ncp_age_dentry(server, dentry);
 len = sizeof(__name);
 error = ncp_io2vol(server, __name, &len, dentry->d_name.name,
      dentry->d_name.len, !ncp_preserve_case(dir));
 if (error)
  goto out;

 error = -EACCES;
 if (ncp_open_create_file_or_subdir(server, dir, __name,
        OC_MODE_CREATE, aDIR,
        cpu_to_le16(0xffff),
        &finfo) == 0)
 {
  if (ncp_is_nfs_extras(server, finfo.volume)) {
   mode |= S_IFDIR;
   finfo.i.nfs.mode = mode;
   if (ncp_modify_nfs_info(server,
      finfo.volume,
      finfo.i.dirEntNum,
      mode, 0) != 0)
    goto out;
  }
  error = ncp_instantiate(dir, dentry, &finfo);
 }
out:
 unlock_kernel();
 return error;
}
