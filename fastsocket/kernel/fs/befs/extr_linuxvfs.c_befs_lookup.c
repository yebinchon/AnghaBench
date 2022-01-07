
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {struct super_block* i_sb; int i_ino; } ;
struct TYPE_6__ {char* name; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef int ino_t ;
typedef scalar_t__ befs_off_t ;
typedef int befs_data_stream ;
struct TYPE_5__ {int ds; } ;
struct TYPE_8__ {TYPE_1__ i_data; } ;
struct TYPE_7__ {scalar_t__ nls; } ;


 int BEFS_BT_NOT_FOUND ;
 TYPE_4__* BEFS_I (struct inode*) ;
 int BEFS_OK ;
 TYPE_3__* BEFS_SB (struct super_block*) ;
 int ENODATA ;
 int ENOENT ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int befs_btree_find (struct super_block*,int *,char*,scalar_t__*) ;
 int befs_debug (struct super_block*,char*,...) ;
 struct inode* befs_iget (struct super_block*,int ) ;
 int befs_nls2utf (struct super_block*,char const*,int ,char**,int*) ;
 int befs_warning (struct super_block*,char*) ;
 int d_add (struct dentry*,struct inode*) ;
 int kfree (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct dentry *
befs_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode = ((void*)0);
 struct super_block *sb = dir->i_sb;
 befs_data_stream *ds = &BEFS_I(dir)->i_data.ds;
 befs_off_t offset;
 int ret;
 int utfnamelen;
 char *utfname;
 const char *name = dentry->d_name.name;

 befs_debug(sb, "---> befs_lookup() "
     "name %s inode %ld", dentry->d_name.name, dir->i_ino);


 if (BEFS_SB(sb)->nls) {
  ret =
      befs_nls2utf(sb, name, strlen(name), &utfname, &utfnamelen);
  if (ret < 0) {
   befs_debug(sb, "<--- befs_lookup() ERROR");
   return ERR_PTR(ret);
  }
  ret = befs_btree_find(sb, ds, utfname, &offset);
  kfree(utfname);

 } else {
  ret = befs_btree_find(sb, ds, dentry->d_name.name, &offset);
 }

 if (ret == BEFS_BT_NOT_FOUND) {
  befs_debug(sb, "<--- befs_lookup() %s not found",
      dentry->d_name.name);
  return ERR_PTR(-ENOENT);

 } else if (ret != BEFS_OK || offset == 0) {
  befs_warning(sb, "<--- befs_lookup() Error");
  return ERR_PTR(-ENODATA);
 }

 inode = befs_iget(dir->i_sb, (ino_t) offset);
 if (IS_ERR(inode))
  return ERR_CAST(inode);

 d_add(dentry, inode);

 befs_debug(sb, "<--- befs_lookup()");

 return ((void*)0);
}
