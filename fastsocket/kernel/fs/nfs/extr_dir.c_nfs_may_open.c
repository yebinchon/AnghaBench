
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;
struct inode {int dummy; } ;


 int nfs_do_access (struct inode*,struct rpc_cred*,int ) ;
 int nfs_open_permission_mask (int) ;

int nfs_may_open(struct inode *inode, struct rpc_cred *cred, int openflags)
{
 return nfs_do_access(inode, cred, nfs_open_permission_mask(openflags));
}
