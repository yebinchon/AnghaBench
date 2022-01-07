
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int flags; } ;
struct inode {int dummy; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_FSCACHE_LOCK ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static inline void nfs_fscache_inode_unlock(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 smp_mb__before_clear_bit();
 clear_bit(NFS_INO_FSCACHE_LOCK, &nfsi->flags);
 smp_mb__after_clear_bit();
 wake_up_bit(&nfsi->flags, NFS_INO_FSCACHE_LOCK);
}
