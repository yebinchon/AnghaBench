
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int inum; } ;
struct qstr {char const* name; int len; } ;
struct inode {int i_nlink; int i_ino; int i_mutex; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int UBIFS_MAX_XENT_NODE_SZ ;
 int check_namespace (struct qstr*) ;
 int dbg_gen (char*,char const*,int ,int ,int ) ;
 struct inode* iget_xattr (struct ubifs_info*,int ) ;
 int iput (struct inode*) ;
 int kfree (struct ubifs_dent_node*) ;
 struct ubifs_dent_node* kmalloc (int ,int ) ;
 int le64_to_cpu (int ) ;
 int mutex_is_locked (int *) ;
 int remove_xattr (struct ubifs_info*,struct inode*,struct inode*,struct qstr*) ;
 int strlen (char const*) ;
 int ubifs_assert (int) ;
 int ubifs_tnc_lookup_nm (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct qstr*) ;
 int xent_key_init (struct ubifs_info*,union ubifs_key*,int ,struct qstr*) ;

int ubifs_removexattr(struct dentry *dentry, const char *name)
{
 struct inode *inode, *host = dentry->d_inode;
 struct ubifs_info *c = host->i_sb->s_fs_info;
 struct qstr nm = { .name = name, .len = strlen(name) };
 struct ubifs_dent_node *xent;
 union ubifs_key key;
 int err;

 dbg_gen("xattr '%s', ino %lu ('%.*s')", name,
  host->i_ino, dentry->d_name.len, dentry->d_name.name);
 ubifs_assert(mutex_is_locked(&host->i_mutex));

 err = check_namespace(&nm);
 if (err < 0)
  return err;

 xent = kmalloc(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
 if (!xent)
  return -ENOMEM;

 xent_key_init(c, &key, host->i_ino, &nm);
 err = ubifs_tnc_lookup_nm(c, &key, xent, &nm);
 if (err) {
  if (err == -ENOENT)
   err = -ENODATA;
  goto out_free;
 }

 inode = iget_xattr(c, le64_to_cpu(xent->inum));
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out_free;
 }

 ubifs_assert(inode->i_nlink == 1);
 inode->i_nlink = 0;
 err = remove_xattr(c, host, inode, &nm);
 if (err)
  inode->i_nlink = 1;


 iput(inode);

out_free:
 kfree(xent);
 return err;
}
