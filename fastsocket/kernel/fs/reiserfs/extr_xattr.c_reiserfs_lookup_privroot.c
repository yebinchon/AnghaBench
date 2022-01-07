
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {TYPE_3__* s_root; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_8__ {struct dentry* priv_root; } ;
struct TYPE_7__ {TYPE_2__* d_inode; int * d_op; } ;
struct TYPE_6__ {int i_mutex; } ;
struct TYPE_5__ {int i_flags; } ;


 int IS_ERR (struct dentry*) ;
 int PRIVROOT_NAME ;
 int PTR_ERR (struct dentry*) ;
 TYPE_4__* REISERFS_SB (struct super_block*) ;
 int S_PRIVATE ;
 struct dentry* lookup_one_len (int ,TYPE_3__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reiserfs_expose_privroot (struct super_block*) ;
 int strlen (int ) ;
 int xattr_lookup_poison_ops ;

int reiserfs_lookup_privroot(struct super_block *s)
{
 struct dentry *dentry;
 int err = 0;


 mutex_lock(&s->s_root->d_inode->i_mutex);
 dentry = lookup_one_len(PRIVROOT_NAME, s->s_root,
    strlen(PRIVROOT_NAME));
 if (!IS_ERR(dentry)) {
  REISERFS_SB(s)->priv_root = dentry;
  if (!reiserfs_expose_privroot(s))
   s->s_root->d_op = &xattr_lookup_poison_ops;
  if (dentry->d_inode)
   dentry->d_inode->i_flags |= S_PRIVATE;
 } else
  err = PTR_ERR(dentry);
 mutex_unlock(&s->s_root->d_inode->i_mutex);

 return err;
}
