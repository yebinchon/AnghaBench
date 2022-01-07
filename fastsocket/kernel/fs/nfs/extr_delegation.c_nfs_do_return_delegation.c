
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int stateid; int cred; } ;
struct inode {int dummy; } ;


 int nfs4_proc_delegreturn (struct inode*,int ,int *,int) ;
 int nfs_free_delegation (struct nfs_delegation*) ;

__attribute__((used)) static int nfs_do_return_delegation(struct inode *inode, struct nfs_delegation *delegation, int issync)
{
 int res = 0;

 res = nfs4_proc_delegreturn(inode, delegation->cred, &delegation->stateid, issync);
 nfs_free_delegation(delegation);
 return res;
}
