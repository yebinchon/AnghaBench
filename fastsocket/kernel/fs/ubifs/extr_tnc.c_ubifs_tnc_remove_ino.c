
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int key; int nlen; int * name; int inum; } ;
struct qstr {int len; int * name; } ;
typedef scalar_t__ ino_t ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct ubifs_dent_node*) ;
 int PTR_ERR (struct ubifs_dent_node*) ;
 int dbg_tnc (char*,unsigned long,...) ;
 int highest_ino_key (struct ubifs_info*,union ubifs_key*,scalar_t__) ;
 int key_read (struct ubifs_info*,int *,union ubifs_key*) ;
 int kfree (struct ubifs_dent_node*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int lowest_ino_key (struct ubifs_info*,union ubifs_key*,scalar_t__) ;
 int lowest_xent_key (struct ubifs_info*,union ubifs_key*,scalar_t__) ;
 struct ubifs_dent_node* ubifs_tnc_next_ent (struct ubifs_info*,union ubifs_key*,struct qstr*) ;
 int ubifs_tnc_remove_nm (struct ubifs_info*,union ubifs_key*,struct qstr*) ;
 int ubifs_tnc_remove_range (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ;

int ubifs_tnc_remove_ino(struct ubifs_info *c, ino_t inum)
{
 union ubifs_key key1, key2;
 struct ubifs_dent_node *xent, *pxent = ((void*)0);
 struct qstr nm = { .name = ((void*)0) };

 dbg_tnc("ino %lu", (unsigned long)inum);





 lowest_xent_key(c, &key1, inum);
 while (1) {
  ino_t xattr_inum;
  int err;

  xent = ubifs_tnc_next_ent(c, &key1, &nm);
  if (IS_ERR(xent)) {
   err = PTR_ERR(xent);
   if (err == -ENOENT)
    break;
   return err;
  }

  xattr_inum = le64_to_cpu(xent->inum);
  dbg_tnc("xent '%s', ino %lu", xent->name,
   (unsigned long)xattr_inum);

  nm.name = xent->name;
  nm.len = le16_to_cpu(xent->nlen);
  err = ubifs_tnc_remove_nm(c, &key1, &nm);
  if (err) {
   kfree(xent);
   return err;
  }

  lowest_ino_key(c, &key1, xattr_inum);
  highest_ino_key(c, &key2, xattr_inum);
  err = ubifs_tnc_remove_range(c, &key1, &key2);
  if (err) {
   kfree(xent);
   return err;
  }

  kfree(pxent);
  pxent = xent;
  key_read(c, &xent->key, &key1);
 }

 kfree(pxent);
 lowest_ino_key(c, &key1, inum);
 highest_ino_key(c, &key2, inum);

 return ubifs_tnc_remove_range(c, &key1, &key2);
}
