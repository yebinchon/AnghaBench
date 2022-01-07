
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_flags; int s_xattr; TYPE_2__* s_root; } ;
struct dentry {TYPE_3__* d_inode; } ;
struct TYPE_8__ {int s_mount_opt; struct dentry* xattr_root; struct dentry* priv_root; } ;
struct TYPE_7__ {int i_mutex; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int i_mutex; } ;


 int IS_ERR (struct dentry*) ;
 int MS_POSIXACL ;
 int MS_RDONLY ;
 int PTR_ERR (struct dentry*) ;
 int REISERFS_POSIXACL ;
 TYPE_4__* REISERFS_SB (struct super_block*) ;
 int REISERFS_XATTRS_USER ;
 int XAROOT_NAME ;
 int clear_bit (int ,int *) ;
 int create_privroot (struct dentry*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ reiserfs_posixacl (struct super_block*) ;
 int reiserfs_xattr_handlers ;
 int strlen (int ) ;
 int xattr_mount_check (struct super_block*) ;

int reiserfs_xattr_init(struct super_block *s, int mount_flags)
{
 int err = 0;
 struct dentry *privroot = REISERFS_SB(s)->priv_root;

 err = xattr_mount_check(s);
 if (err)
  goto error;

 if (!privroot->d_inode && !(mount_flags & MS_RDONLY)) {
  mutex_lock(&s->s_root->d_inode->i_mutex);
  err = create_privroot(REISERFS_SB(s)->priv_root);
  mutex_unlock(&s->s_root->d_inode->i_mutex);
 }

 if (privroot->d_inode) {
  s->s_xattr = reiserfs_xattr_handlers;
  mutex_lock(&privroot->d_inode->i_mutex);
  if (!REISERFS_SB(s)->xattr_root) {
   struct dentry *dentry;
   dentry = lookup_one_len(XAROOT_NAME, privroot,
      strlen(XAROOT_NAME));
   if (!IS_ERR(dentry))
    REISERFS_SB(s)->xattr_root = dentry;
   else
    err = PTR_ERR(dentry);
  }
  mutex_unlock(&privroot->d_inode->i_mutex);
 }

error:
 if (err) {
  clear_bit(REISERFS_XATTRS_USER, &(REISERFS_SB(s)->s_mount_opt));
  clear_bit(REISERFS_POSIXACL, &(REISERFS_SB(s)->s_mount_opt));
 }


 if (reiserfs_posixacl(s))
  s->s_flags |= MS_POSIXACL;
 else
  s->s_flags &= ~MS_POSIXACL;

 return err;
}
