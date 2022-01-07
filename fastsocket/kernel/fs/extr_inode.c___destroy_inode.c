
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_acl; scalar_t__ i_default_acl; } ;


 scalar_t__ ACL_NOT_CACHED ;
 int BUG_ON (int ) ;
 int fsnotify_inode_delete (struct inode*) ;
 int inode_has_buffers (struct inode*) ;
 int posix_acl_release (scalar_t__) ;
 int security_inode_free (struct inode*) ;

void __destroy_inode(struct inode *inode)
{
 BUG_ON(inode_has_buffers(inode));
 security_inode_free(inode);
 fsnotify_inode_delete(inode);






}
