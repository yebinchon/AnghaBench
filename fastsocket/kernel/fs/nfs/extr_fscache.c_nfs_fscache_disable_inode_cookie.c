
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ fscache; int flags; } ;


 int FSCACHE ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_FSCACHE ;
 int clear_bit (int ,int *) ;
 int dfprintk (int ,char*,TYPE_1__*) ;
 int fscache_uncache_all_inode_pages (scalar_t__,struct inode*) ;
 int nfs_fscache_zap_inode_cookie (struct inode*) ;

__attribute__((used)) static void nfs_fscache_disable_inode_cookie(struct inode *inode)
{
 clear_bit(NFS_INO_FSCACHE, &NFS_I(inode)->flags);

 if (NFS_I(inode)->fscache) {
  dfprintk(FSCACHE,
    "NFS: nfsi 0x%p turning cache off\n", NFS_I(inode));




  fscache_uncache_all_inode_pages(NFS_I(inode)->fscache, inode);
  nfs_fscache_zap_inode_cookie(inode);
 }
}
