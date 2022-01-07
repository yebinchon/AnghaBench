
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int dummy; } ;
struct qstr {int * name; } ;
struct inode {int i_ino; } ;


 int ENOENT ;
 int ENOTEMPTY ;
 scalar_t__ IS_ERR (struct ubifs_dent_node*) ;
 int PTR_ERR (struct ubifs_dent_node*) ;
 int kfree (struct ubifs_dent_node*) ;
 int lowest_dent_key (struct ubifs_info*,union ubifs_key*,int ) ;
 struct ubifs_dent_node* ubifs_tnc_next_ent (struct ubifs_info*,union ubifs_key*,struct qstr*) ;

__attribute__((used)) static int check_dir_empty(struct ubifs_info *c, struct inode *dir)
{
 struct qstr nm = { .name = ((void*)0) };
 struct ubifs_dent_node *dent;
 union ubifs_key key;
 int err;

 lowest_dent_key(c, &key, dir->i_ino);
 dent = ubifs_tnc_next_ent(c, &key, &nm);
 if (IS_ERR(dent)) {
  err = PTR_ERR(dent);
  if (err == -ENOENT)
   err = 0;
 } else {
  kfree(dent);
  err = -ENOTEMPTY;
 }
 return err;
}
