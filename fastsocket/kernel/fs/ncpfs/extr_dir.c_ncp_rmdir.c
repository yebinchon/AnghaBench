
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
typedef int __u8 ;
typedef int __name ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int DPRINTK (char*,int ,int ) ;
 int EACCES ;
 int EBUSY ;
 int EIO ;
 int ENOENT ;
 int ENOTEMPTY ;
 int EPERM ;
 int NCP_MAXPATHLEN ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int d_unhashed (struct dentry*) ;
 int lock_kernel () ;
 int ncp_conn_valid (struct ncp_server*) ;
 int ncp_del_file_or_subdir (struct ncp_server*,struct inode*,int *) ;
 int ncp_io2vol (struct ncp_server*,int *,int*,int ,int ,int) ;
 int ncp_preserve_case (struct inode*) ;
 int unlock_kernel () ;

__attribute__((used)) static int ncp_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct ncp_server *server = NCP_SERVER(dir);
 int error, result, len;
 __u8 __name[NCP_MAXPATHLEN + 1];

 DPRINTK("ncp_rmdir: removing %s/%s\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);

 error = -EIO;
 lock_kernel();
 if (!ncp_conn_valid(server))
  goto out;

 error = -EBUSY;
 if (!d_unhashed(dentry))
  goto out;

 len = sizeof(__name);
 error = ncp_io2vol(server, __name, &len, dentry->d_name.name,
      dentry->d_name.len, !ncp_preserve_case(dir));
 if (error)
  goto out;

 result = ncp_del_file_or_subdir(server, dir, __name);
 switch (result) {
  case 0x00:
   error = 0;
   break;
  case 0x85:
  case 0x8A:
   error = -EACCES;
   break;
  case 0x8F:
  case 0x90:
   error = -EPERM;
   break;
  case 0x9F:
   error = -EBUSY;
   break;
  case 0xA0:
   error = -ENOTEMPTY;
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
