
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ncp_server {int dummy; } ;
struct TYPE_9__ {int volNumber; } ;
struct ncp_entry_info {TYPE_4__ i; int volume; int ino; scalar_t__ opened; } ;
struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {int * d_op; TYPE_3__* d_parent; TYPE_1__ d_name; } ;
typedef int __u8 ;
typedef int __name ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {TYPE_2__ d_name; } ;


 int EACCES ;
 int EIO ;
 struct dentry* ERR_PTR (int) ;
 int NCP_MAXPATHLEN ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int PPRINTK (char*,int,...) ;
 int d_add (struct dentry*,struct inode*) ;
 int iunique (int ,int) ;
 int lock_kernel () ;
 int ncp_conn_valid (struct ncp_server*) ;
 int ncp_dentry_operations ;
 struct inode* ncp_iget (int ,struct ncp_entry_info*) ;
 int ncp_io2vol (struct ncp_server*,int *,int*,int ,int ,int) ;
 scalar_t__ ncp_is_server_root (struct inode*) ;
 int ncp_lookup_volume (struct ncp_server*,int *,TYPE_4__*) ;
 int ncp_new_dentry (struct dentry*) ;
 int ncp_obtain_info (struct ncp_server*,struct inode*,int *,TYPE_4__*) ;
 int ncp_preserve_case (struct inode*) ;
 int unlock_kernel () ;

__attribute__((used)) static struct dentry *ncp_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct ncp_server *server = NCP_SERVER(dir);
 struct inode *inode = ((void*)0);
 struct ncp_entry_info finfo;
 int error, res, len;
 __u8 __name[NCP_MAXPATHLEN + 1];

 lock_kernel();
 error = -EIO;
 if (!ncp_conn_valid(server))
  goto finished;

 PPRINTK("ncp_lookup: server lookup for %s/%s\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);

 len = sizeof(__name);
 if (ncp_is_server_root(dir)) {
  res = ncp_io2vol(server, __name, &len, dentry->d_name.name,
     dentry->d_name.len, 1);
  if (!res)
   res = ncp_lookup_volume(server, __name, &(finfo.i));
 } else {
  res = ncp_io2vol(server, __name, &len, dentry->d_name.name,
     dentry->d_name.len, !ncp_preserve_case(dir));
  if (!res)
   res = ncp_obtain_info(server, dir, __name, &(finfo.i));
 }
 PPRINTK("ncp_lookup: looked for %s/%s, res=%d\n",
  dentry->d_parent->d_name.name, __name, res);



 if (res)
  goto add_entry;




 finfo.opened = 0;
 finfo.ino = iunique(dir->i_sb, 2);
 finfo.volume = finfo.i.volNumber;
 error = -EACCES;
 inode = ncp_iget(dir->i_sb, &finfo);

 if (inode) {
  ncp_new_dentry(dentry);
add_entry:
  dentry->d_op = &ncp_dentry_operations;
  d_add(dentry, inode);
  error = 0;
 }

finished:
 PPRINTK("ncp_lookup: result=%d\n", error);
 unlock_kernel();
 return ERR_PTR(error);
}
