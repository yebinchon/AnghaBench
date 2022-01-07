
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int SMB_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int smb_inode_cachep ;

__attribute__((used)) static void smb_destroy_inode(struct inode *inode)
{
 kmem_cache_free(smb_inode_cachep, SMB_I(inode));
}
