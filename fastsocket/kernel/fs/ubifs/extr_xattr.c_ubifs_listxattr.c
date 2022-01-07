
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_inode {int xattr_names; int xattr_cnt; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int key; int nlen; int * name; } ;
struct qstr {scalar_t__ len; int * name; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int CAP_SYS_ADMIN ;
 int ENOENT ;
 int ERANGE ;
 scalar_t__ IS_ERR (struct ubifs_dent_node*) ;
 int PTR_ERR (struct ubifs_dent_node*) ;
 int TRUSTED_XATTR ;
 scalar_t__ capable (int ) ;
 int check_namespace (struct qstr*) ;
 int dbg_gen (char*,int ,int ,int ,size_t) ;
 int key_read (struct ubifs_info*,int *,union ubifs_key*) ;
 int kfree (struct ubifs_dent_node*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int lowest_xent_key (struct ubifs_info*,union ubifs_key*,int ) ;
 int memcpy (char*,int *,scalar_t__) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,int) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 struct ubifs_dent_node* ubifs_tnc_next_ent (struct ubifs_info*,union ubifs_key*,struct qstr*) ;
 scalar_t__ unlikely (int) ;

ssize_t ubifs_listxattr(struct dentry *dentry, char *buffer, size_t size)
{
 union ubifs_key key;
 struct inode *host = dentry->d_inode;
 struct ubifs_info *c = host->i_sb->s_fs_info;
 struct ubifs_inode *host_ui = ubifs_inode(host);
 struct ubifs_dent_node *xent, *pxent = ((void*)0);
 int err, len, written = 0;
 struct qstr nm = { .name = ((void*)0) };

 dbg_gen("ino %lu ('%.*s'), buffer size %zd", host->i_ino,
  dentry->d_name.len, dentry->d_name.name, size);

 len = host_ui->xattr_names + host_ui->xattr_cnt;
 if (!buffer)




  return len;

 if (len > size)
  return -ERANGE;

 lowest_xent_key(c, &key, host->i_ino);
 while (1) {
  int type;

  xent = ubifs_tnc_next_ent(c, &key, &nm);
  if (IS_ERR(xent)) {
   err = PTR_ERR(xent);
   break;
  }

  nm.name = xent->name;
  nm.len = le16_to_cpu(xent->nlen);

  type = check_namespace(&nm);
  if (unlikely(type < 0)) {
   err = type;
   break;
  }


  if (type != TRUSTED_XATTR || capable(CAP_SYS_ADMIN)) {
   memcpy(buffer + written, nm.name, nm.len + 1);
   written += nm.len + 1;
  }

  kfree(pxent);
  pxent = xent;
  key_read(c, &xent->key, &key);
 }

 kfree(pxent);
 if (err != -ENOENT) {
  ubifs_err("cannot find next direntry, error %d", err);
  return err;
 }

 ubifs_assert(written <= size);
 return written;
}
