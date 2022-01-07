
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int stateid; } ;
struct inode {int dummy; } ;


 int nfs_free_delegation (struct nfs_delegation*) ;
 struct nfs_delegation* nfs_inode_detach_delegation (struct inode*) ;
 int nfs_inode_find_state_and_recover (struct inode*,int *) ;

void nfs_remove_bad_delegation(struct inode *inode)
{
 struct nfs_delegation *delegation;

 delegation = nfs_inode_detach_delegation(inode);
 if (delegation) {
  nfs_inode_find_state_and_recover(inode, &delegation->stateid);
  nfs_free_delegation(delegation);
 }
}
