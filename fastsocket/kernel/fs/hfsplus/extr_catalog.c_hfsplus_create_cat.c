
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int name; } ;
struct inode {int i_ctime; int i_mtime; int i_size; int i_ino; int i_mode; struct super_block* i_sb; int i_nlink; } ;
struct hfs_find_data {int search_key; } ;
typedef int hfsplus_cat_entry ;
struct TYPE_2__ {int cat_tree; } ;


 int CURRENT_TIME_SEC ;
 int DBG_CAT_MOD ;
 int EEXIST ;
 int ENOENT ;
 int HFSPLUS_FILE_THREAD ;
 int HFSPLUS_FOLDER_THREAD ;
 TYPE_1__ HFSPLUS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 int dprint (int ,char*,int ,int ,int ) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_brec_insert (struct hfs_find_data*,int *,int) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfsplus_cat_build_key (struct super_block*,int ,int ,struct qstr*) ;
 int hfsplus_cat_build_record (int *,int ,struct inode*) ;
 int hfsplus_fill_cat_thread (struct super_block*,int *,int ,int ,struct qstr*) ;
 int mark_inode_dirty (struct inode*) ;

int hfsplus_create_cat(u32 cnid, struct inode *dir, struct qstr *str, struct inode *inode)
{
 struct hfs_find_data fd;
 struct super_block *sb;
 hfsplus_cat_entry entry;
 int entry_size;
 int err;

 dprint(DBG_CAT_MOD, "create_cat: %s,%u(%d)\n", str->name, cnid, inode->i_nlink);
 sb = dir->i_sb;
 hfs_find_init(HFSPLUS_SB(sb).cat_tree, &fd);

 hfsplus_cat_build_key(sb, fd.search_key, cnid, ((void*)0));
 entry_size = hfsplus_fill_cat_thread(sb, &entry, S_ISDIR(inode->i_mode) ?
   HFSPLUS_FOLDER_THREAD : HFSPLUS_FILE_THREAD,
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

 hfsplus_cat_build_key(sb, fd.search_key, dir->i_ino, str);
 entry_size = hfsplus_cat_build_record(&entry, cnid, inode);
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
 hfsplus_cat_build_key(sb, fd.search_key, cnid, ((void*)0));
 if (!hfs_brec_find(&fd))
  hfs_brec_remove(&fd);
err2:
 hfs_find_exit(&fd);
 return err;
}
