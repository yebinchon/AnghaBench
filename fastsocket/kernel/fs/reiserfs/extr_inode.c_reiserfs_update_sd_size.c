
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int t_super; int t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int INITIALIZE_PATH (int ) ;
 int INODE_PKEY (struct inode*) ;
 int IO_ERROR ;
 int ITEM_NOT_FOUND ;
 int PATH_LAST_POSITION (int *) ;
 int SD_OFFSET ;
 int TYPE_STAT_DATA ;
 int copy_item_head (struct item_head*,struct item_head*) ;
 scalar_t__ fs_changed (int,int ) ;
 int get_generation (int ) ;
 struct item_head* get_ih (int *) ;
 struct buffer_head* get_last_bh (int *) ;
 scalar_t__ item_moved (struct item_head*,int *) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,int ,struct buffer_head*) ;
 int make_cpu_key (struct cpu_key*,struct inode*,int ,int ,int) ;
 int path ;
 int pathrelse (int *) ;
 int reiserfs_check_path (int *) ;
 int reiserfs_error (int ,char*,char*,struct cpu_key*) ;
 int reiserfs_prepare_for_journal (int ,struct buffer_head*,int) ;
 int reiserfs_restore_prepared_buffer (int ,struct buffer_head*) ;
 int reiserfs_warning (int ,char*,char*,int ,scalar_t__,int) ;
 int search_item (int ,struct cpu_key*,int *) ;
 int update_stat_data (int *,struct inode*,int ) ;

void reiserfs_update_sd_size(struct reiserfs_transaction_handle *th,
        struct inode *inode, loff_t size)
{
 struct cpu_key key;
 INITIALIZE_PATH(path);
 struct buffer_head *bh;
 int fs_gen;
 struct item_head *ih, tmp_ih;
 int retval;

 BUG_ON(!th->t_trans_id);

 make_cpu_key(&key, inode, SD_OFFSET, TYPE_STAT_DATA, 3);

 for (;;) {
  int pos;

  retval = search_item(inode->i_sb, &key, &path);
  if (retval == IO_ERROR) {
   reiserfs_error(inode->i_sb, "vs-13050",
           "i/o failure occurred trying to "
           "update %K stat data", &key);
   return;
  }
  if (retval == ITEM_NOT_FOUND) {
   pos = PATH_LAST_POSITION(&path);
   pathrelse(&path);
   if (inode->i_nlink == 0) {

    return;
   }
   reiserfs_warning(inode->i_sb, "vs-13060",
      "stat data of object %k (nlink == %d) "
      "not found (pos %d)",
      INODE_PKEY(inode), inode->i_nlink,
      pos);
   reiserfs_check_path(&path);
   return;
  }





  bh = get_last_bh(&path);
  ih = get_ih(&path);
  copy_item_head(&tmp_ih, ih);
  fs_gen = get_generation(inode->i_sb);
  reiserfs_prepare_for_journal(inode->i_sb, bh, 1);
  if (fs_changed(fs_gen, inode->i_sb)
      && item_moved(&tmp_ih, &path)) {
   reiserfs_restore_prepared_buffer(inode->i_sb, bh);
   continue;
  }
  break;
 }
 update_stat_data(&path, inode, size);
 journal_mark_dirty(th, th->t_super, bh);
 pathrelse(&path);
 return;
}
