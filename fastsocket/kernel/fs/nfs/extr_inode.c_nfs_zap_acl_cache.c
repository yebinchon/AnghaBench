
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct TYPE_4__ {int cache_validity; } ;
struct TYPE_3__ {void (* clear_acl_cache ) (struct inode*) ;} ;


 TYPE_2__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACL ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_zap_acl_cache(struct inode *inode)
{
 void (*clear_acl_cache)(struct inode *);

 clear_acl_cache = NFS_PROTO(inode)->clear_acl_cache;
 if (clear_acl_cache != ((void*)0))
  clear_acl_cache(inode);
 spin_lock(&inode->i_lock);
 NFS_I(inode)->cache_validity &= ~NFS_INO_INVALID_ACL;
 spin_unlock(&inode->i_lock);
}
