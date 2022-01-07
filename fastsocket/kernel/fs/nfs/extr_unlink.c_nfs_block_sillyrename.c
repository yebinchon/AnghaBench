
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int silly_count; int waitqueue; } ;
struct dentry {int d_inode; } ;


 struct nfs_inode* NFS_I (int ) ;
 int atomic_cmpxchg (int *,int,int ) ;
 int wait_event (int ,int) ;

void nfs_block_sillyrename(struct dentry *dentry)
{
 struct nfs_inode *nfsi = NFS_I(dentry->d_inode);

 wait_event(nfsi->waitqueue, atomic_cmpxchg(&nfsi->silly_count, 1, 0) == 1);
}
