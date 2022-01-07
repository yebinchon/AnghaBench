
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_STALE ;
 int nfs_zap_caches_locked (struct inode*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_invalidate_inode(struct inode *inode)
{
 set_bit(NFS_INO_STALE, &NFS_I(inode)->flags);
 nfs_zap_caches_locked(inode);
}
