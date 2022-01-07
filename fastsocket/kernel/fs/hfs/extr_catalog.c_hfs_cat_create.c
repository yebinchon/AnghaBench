
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union hfs_cat_rec {int dummy; } hfs_cat_rec ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int name; } ;
struct inode {scalar_t__ i_size; int i_ctime; int i_mtime; int i_ino; int i_mode; struct super_block* i_sb; int i_nlink; } ;
struct hfs_find_data {int search_key; } ;
struct TYPE_2__ {int cat_tree; } ;


 int CURRENT_TIME_SEC ;
 int DBG_CAT_MOD ;
 int EEXIST ;
 int ENOENT ;
 int ENOSPC ;
 int HFS_CDR_FTH ;
 int HFS_CDR_THD ;
 scalar_t__ HFS_MAX_VALENCE ;
 TYPE_1__* HFS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 int dprint (int ,char*,int ,int ,int ) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_brec_insert (struct hfs_find_data*,union hfs_cat_rec*,int) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_cat_build_key (struct super_block*,int ,int ,struct qstr*) ;
 int hfs_cat_build_record (union hfs_cat_rec*,int ,struct inode*) ;
 int hfs_cat_build_thread (struct super_block*,union hfs_cat_rec*,int ,int ,struct qstr*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int mark_inode_dirty (struct inode*) ;

int hfs_cat_create(u32 cnid, struct inode *dir, struct qstr *str, struct inode *inode)
{
 struct hfs_find_data fd;
 struct super_block *sb;
 union hfs_cat_rec entry;
 int entry_size;
 int err;

 dprint(DBG_CAT_MOD, "create_cat: %s,%u(%d)\n", str->name, cnid, inode->i_nlink);
 if (dir->i_size >= HFS_MAX_VALENCE)
  return -ENOSPC;

 sb = dir->i_sb;
 hfs_find_init(HFS_SB(sb)->cat_tree, &fd);

 hfs_cat_build_key(sb, fd.search_key, cnid, ((void*)0));
 entry_size = hfs_cat_build_thread(sb, &entry, S_ISDIR(inode->i_mode) ?
   HFS_CDR_THD : HFS_CDR_FTH,
   dir->i_ino, str);
 err = hfs_brec_find(&fd);
 if (err != -ENOENT) {
  if (!err)
   err = -EEXIST;
  goto err2;
 }
 err = hfs_brec_insert(&fd, &entry, entry_size);
 if (err)
  goto err2;

 hfs_cat_build_key(sb, fd.search_key, dir->i_ino, str);
 entry_size = hfs_cat_build_record(&entry, cnid, inode);
 err = hfs_brec_find(&fd);
 if (err != -ENOENT) {

  if (!err)
   err = -EEXIST;
  goto err1;
 }
 err = hfs_brec_insert(&fd, &entry, entry_size);
 if (err)
  goto err1;

 dir->i_size++;
 dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(dir);
 hfs_find_exit(&fd);
 return 0;

err1:
 hfs_cat_build_key(sb, fd.search_key, cnid, ((void*)0));
 if (!hfs_brec_find(&fd))
  hfs_brec_remove(&fd);
err2:
 hfs_find_exit(&fd);
 return err;
}
