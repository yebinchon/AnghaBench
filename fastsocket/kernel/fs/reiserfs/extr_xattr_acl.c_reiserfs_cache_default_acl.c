
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {int a_count; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int i_flags; } ;


 int ACL_TYPE_DEFAULT ;
 int IS_ERR (struct posix_acl*) ;
 scalar_t__ IS_PRIVATE (struct inode*) ;
 scalar_t__ JOURNAL_BLOCKS_PER_OBJECT (int ) ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int i_has_xattr_dir ;
 int posix_acl_release (struct posix_acl*) ;
 int reiserfs_acl_size (int ) ;
 struct posix_acl* reiserfs_get_acl (struct inode*,int ) ;
 int reiserfs_xattr_jcreate_nblocks (struct inode*) ;
 int reiserfs_xattr_nblocks (struct inode*,int) ;

int reiserfs_cache_default_acl(struct inode *inode)
{
 struct posix_acl *acl;
 int nblocks = 0;

 if (IS_PRIVATE(inode))
  return 0;

 acl = reiserfs_get_acl(inode, ACL_TYPE_DEFAULT);

 if (acl && !IS_ERR(acl)) {
  int size = reiserfs_acl_size(acl->a_count);





  nblocks = reiserfs_xattr_jcreate_nblocks(inode);
  nblocks += JOURNAL_BLOCKS_PER_OBJECT(inode->i_sb);

  REISERFS_I(inode)->i_flags |= i_has_xattr_dir;


  nblocks += reiserfs_xattr_nblocks(inode, size) * 4;
  posix_acl_release(acl);
 }

 return nblocks;
}
