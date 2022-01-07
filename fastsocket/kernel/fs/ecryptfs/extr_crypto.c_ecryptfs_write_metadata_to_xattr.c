
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ECRYPTFS_XATTR_NAME ;
 int ecryptfs_setxattr (struct dentry*,int ,char*,size_t,int ) ;

__attribute__((used)) static int
ecryptfs_write_metadata_to_xattr(struct dentry *ecryptfs_dentry,
     char *page_virt, size_t size)
{
 int rc;

 rc = ecryptfs_setxattr(ecryptfs_dentry, ECRYPTFS_XATTR_NAME, page_virt,
          size, 0);
 return rc;
}
