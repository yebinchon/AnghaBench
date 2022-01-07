
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int lock; int * inode; } ;
struct inode {int dummy; } ;


 struct inode* igrab (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct inode *nfs_delegation_grab_inode(struct nfs_delegation *delegation)
{
 struct inode *inode = ((void*)0);

 spin_lock(&delegation->lock);
 if (delegation->inode != ((void*)0))
  inode = igrab(delegation->inode);
 spin_unlock(&delegation->lock);
 return inode;
}
