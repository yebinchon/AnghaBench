
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_2__ {int flags; int * fscache; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_FSCACHE ;
 scalar_t__ S_ISREG (int ) ;
 int set_bit (int ,int *) ;

void nfs_fscache_init_inode_cookie(struct inode *inode)
{
 NFS_I(inode)->fscache = ((void*)0);
 if (S_ISREG(inode->i_mode))
  set_bit(NFS_INO_FSCACHE, &NFS_I(inode)->flags);
}
