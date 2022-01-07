
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct ncp_server {TYPE_1__ m; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; struct inode* d_inode; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_2__ d_name; } ;


 int DPRINTK (char*,int ,int ) ;
 int EACCES ;
 int EBUSY ;
 int EIO ;
 int ENOENT ;
 int EPERM ;
 int NCP_MOUNT_STRONG ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int PPRINTK (char*) ;
 int lock_kernel () ;
 int ncp_conn_valid (struct ncp_server*) ;
 int ncp_del_file_or_subdir2 (struct ncp_server*,struct dentry*) ;
 int ncp_force_unlink (struct inode*,struct dentry*) ;
 int ncp_make_closed (struct inode*) ;
 int unlock_kernel () ;

__attribute__((used)) static int ncp_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 struct ncp_server *server;
 int error;

 lock_kernel();
 server = NCP_SERVER(dir);
 DPRINTK("ncp_unlink: unlinking %s/%s\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);

 error = -EIO;
 if (!ncp_conn_valid(server))
  goto out;




 if (inode) {
  PPRINTK("ncp_unlink: closing file\n");
  ncp_make_closed(inode);
 }

 error = ncp_del_file_or_subdir2(server, dentry);







 switch (error) {
  case 0x00:
   DPRINTK("ncp: removed %s/%s\n",
    dentry->d_parent->d_name.name, dentry->d_name.name);
   break;
  case 0x85:
  case 0x8A:
   error = -EACCES;
   break;
  case 0x8D:
  case 0x8E:
   error = -EBUSY;
   break;
  case 0x8F:
  case 0x90:
  case 0x9C:
   error = -EPERM;
   break;
  case 0xFF:
   error = -ENOENT;
   break;
  default:
   error = -EACCES;
   break;
 }

out:
 unlock_kernel();
 return error;
}
