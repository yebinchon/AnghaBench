
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_security_handle {scalar_t__ length; int * value; int * name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_flags; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_PRIVATE (struct inode*) ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int i_has_xattr_dir ;
 int reiserfs_xattr_jcreate_nblocks (struct inode*) ;
 int reiserfs_xattr_nblocks (struct inode*,scalar_t__) ;
 int security_inode_init_security (struct inode*,struct inode*,int **,int **,scalar_t__*) ;

int reiserfs_security_init(struct inode *dir, struct inode *inode,
      struct reiserfs_security_handle *sec)
{
 int blocks = 0;
 int error;

 sec->name = ((void*)0);


 if (IS_PRIVATE(dir))
  return 0;

 error = security_inode_init_security(inode, dir, &sec->name,
          &sec->value, &sec->length);
 if (error) {
  if (error == -EOPNOTSUPP)
   error = 0;

  sec->name = ((void*)0);
  sec->value = ((void*)0);
  sec->length = 0;
  return error;
 }

 if (sec->length) {
  blocks = reiserfs_xattr_jcreate_nblocks(inode) +
    reiserfs_xattr_nblocks(inode, sec->length);


  REISERFS_I(inode)->i_flags |= i_has_xattr_dir;
 }
 return blocks;
}
