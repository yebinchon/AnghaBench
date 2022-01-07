
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int name; } ;
struct inode {int i_ino; void* i_ctime; void* i_mtime; int i_size; struct super_block* i_sb; } ;
struct hfs_find_data {int entrylength; int bnode; int search_key; int entryoffset; } ;
typedef int hfsplus_cat_entry ;
struct TYPE_2__ {int cat_tree; } ;


 void* CURRENT_TIME_SEC ;
 int DBG_CAT_MOD ;
 int EEXIST ;
 int ENOENT ;
 TYPE_1__ HFSPLUS_SB (struct super_block*) ;
 int dprint (int ,char*,int ,int ,int ,int ,int ) ;
 int hfs_bnode_put (int ) ;
 int hfs_bnode_read (int ,int *,int ,int) ;
 int hfs_bnode_read_u16 (int ,int ) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_brec_insert (struct hfs_find_data*,int *,int) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfsplus_cat_build_key (struct super_block*,int ,int ,struct qstr*) ;
 int hfsplus_fill_cat_thread (struct super_block*,int *,int,int ,struct qstr*) ;
 int mark_inode_dirty (struct inode*) ;

int hfsplus_rename_cat(u32 cnid,
         struct inode *src_dir, struct qstr *src_name,
         struct inode *dst_dir, struct qstr *dst_name)
{
 struct super_block *sb;
 struct hfs_find_data src_fd, dst_fd;
 hfsplus_cat_entry entry;
 int entry_size, type;
 int err = 0;

 dprint(DBG_CAT_MOD, "rename_cat: %u - %lu,%s - %lu,%s\n", cnid, src_dir->i_ino, src_name->name,
  dst_dir->i_ino, dst_name->name);
 sb = src_dir->i_sb;
 hfs_find_init(HFSPLUS_SB(sb).cat_tree, &src_fd);
 dst_fd = src_fd;


 hfsplus_cat_build_key(sb, src_fd.search_key, src_dir->i_ino, src_name);
 err = hfs_brec_find(&src_fd);
 if (err)
  goto out;

 hfs_bnode_read(src_fd.bnode, &entry, src_fd.entryoffset,
    src_fd.entrylength);


 hfsplus_cat_build_key(sb, dst_fd.search_key, dst_dir->i_ino, dst_name);
 err = hfs_brec_find(&dst_fd);
 if (err != -ENOENT) {
  if (!err)
   err = -EEXIST;
  goto out;
 }

 err = hfs_brec_insert(&dst_fd, &entry, src_fd.entrylength);
 if (err)
  goto out;
 dst_dir->i_size++;
 dst_dir->i_mtime = dst_dir->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(dst_dir);


 hfsplus_cat_build_key(sb, src_fd.search_key, src_dir->i_ino, src_name);
 err = hfs_brec_find(&src_fd);
 if (err)
  goto out;
 err = hfs_brec_remove(&src_fd);
 if (err)
  goto out;
 src_dir->i_size--;
 src_dir->i_mtime = src_dir->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(src_dir);


 hfsplus_cat_build_key(sb, src_fd.search_key, cnid, ((void*)0));
 err = hfs_brec_find(&src_fd);
 if (err)
  goto out;
 type = hfs_bnode_read_u16(src_fd.bnode, src_fd.entryoffset);
 err = hfs_brec_remove(&src_fd);
 if (err)
  goto out;


 hfsplus_cat_build_key(sb, dst_fd.search_key, cnid, ((void*)0));
 entry_size = hfsplus_fill_cat_thread(sb, &entry, type, dst_dir->i_ino, dst_name);
 err = hfs_brec_find(&dst_fd);
 if (err != -ENOENT) {
  if (!err)
   err = -EEXIST;
  goto out;
 }
 err = hfs_brec_insert(&dst_fd, &entry, entry_size);
out:
 hfs_bnode_put(dst_fd.bnode);
 hfs_find_exit(&src_fd);
 return err;
}
