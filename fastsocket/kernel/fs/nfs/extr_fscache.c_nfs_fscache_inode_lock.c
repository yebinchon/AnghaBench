
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int flags; } ;
struct inode {int dummy; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_FSCACHE_LOCK ;
 int TASK_UNINTERRUPTIBLE ;
 int nfs_fscache_wait_bit ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ,int ) ;

__attribute__((used)) static inline void nfs_fscache_inode_lock(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 while (test_and_set_bit(NFS_INO_FSCACHE_LOCK, &nfsi->flags))
  wait_on_bit(&nfsi->flags, NFS_INO_FSCACHE_LOCK,
       nfs_fscache_wait_bit, TASK_UNINTERRUPTIBLE);
}
