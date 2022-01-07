
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int waitqueue; int silly_count; } ;
struct inode {int dummy; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int atomic_dec_return (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void nfs_dec_sillycount(struct inode *dir)
{
 struct nfs_inode *nfsi = NFS_I(dir);
 if (atomic_dec_return(&nfsi->silly_count) == 1)
  wake_up(&nfsi->waitqueue);
}
