
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct inode {int i_mode; int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int access; } ;
struct TYPE_3__ {int s_id; } ;


 int EACCES ;
 int IS_ERR (struct rpc_cred*) ;
 int MAY_ACCESS ;
 int MAY_EXEC ;
 int MAY_OPEN ;
 int MAY_READ ;
 int MAY_WRITE ;
 int NFSIOS_VFSACCESS ;
 int NFS_CAP_ATOMIC_OPEN ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 int NFS_SERVER (struct inode*) ;
 int PTR_ERR (struct rpc_cred*) ;


 int S_IFMT ;

 int VFS ;
 int dfprintk (int ,char*,int ,int ,int,int) ;
 int execute_ok (struct inode*) ;
 int generic_permission (struct inode*,int,int *) ;
 int nfs_do_access (struct inode*,struct rpc_cred*,int) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_revalidate_inode (int ,struct inode*) ;
 int nfs_server_capable (struct inode*,int ) ;
 int put_rpccred (struct rpc_cred*) ;
 struct rpc_cred* rpc_lookup_cred () ;

int nfs_permission(struct inode *inode, int mask)
{
 struct rpc_cred *cred;
 int res = 0;

 nfs_inc_stats(inode, NFSIOS_VFSACCESS);

 if ((mask & (MAY_READ | MAY_WRITE | MAY_EXEC)) == 0)
  goto out;

 if (mask & MAY_ACCESS)
  goto force_lookup;

 switch (inode->i_mode & S_IFMT) {
  case 129:
   goto out;
  case 128:

   if (nfs_server_capable(inode, NFS_CAP_ATOMIC_OPEN)
     && (mask & MAY_OPEN)
     && !(mask & MAY_EXEC))
    goto out;
   break;
  case 130:




   if ((mask & MAY_WRITE) && !(mask & MAY_READ))
    goto out;
 }

force_lookup:
 if (!NFS_PROTO(inode)->access)
  goto out_notsup;

 cred = rpc_lookup_cred();
 if (!IS_ERR(cred)) {
  res = nfs_do_access(inode, cred, mask);
  put_rpccred(cred);
 } else
  res = PTR_ERR(cred);
out:
 if (!res && (mask & MAY_EXEC) && !execute_ok(inode))
  res = -EACCES;

 dfprintk(VFS, "NFS: permission(%s/%ld), mask=0x%x, res=%d\n",
  inode->i_sb->s_id, inode->i_ino, mask, res);
 return res;
out_notsup:
 res = nfs_revalidate_inode(NFS_SERVER(inode), inode);
 if (res == 0)
  res = generic_permission(inode, mask, ((void*)0));
 goto out;
}
