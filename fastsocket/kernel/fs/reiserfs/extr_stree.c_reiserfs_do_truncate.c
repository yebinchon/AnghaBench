
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct reiserfs_transaction_handle {int t_blocks_allocated; int t_trans_id; } ;
struct page {int dummy; } ;
struct item_head {int dummy; } ;
struct inode {int i_size; void* i_ctime; void* i_mtime; TYPE_2__* i_sb; int i_mode; } ;
struct TYPE_14__ {struct cpu_key* k_objectid; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;
typedef int loff_t ;
struct TYPE_16__ {int reada; int pos_in_item; } ;
struct TYPE_15__ {int s_blocksize; } ;


 int BUG_ON (int) ;
 void* CURRENT_TIME_SEC ;
 int EIO ;
 int FILE_NOT_FOUND ;
 int INITIALIZE_PATH (TYPE_3__) ;
 int IO_ERROR ;
 scalar_t__ JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD ;
 int JOURNAL_PER_BALANCE_CNT ;
 struct item_head* PATH_PITEM_HEAD (TYPE_3__*) ;
 int PATH_READA ;
 int PATH_READA_BACK ;
 int POSITION_FOUND ;
 int RFALSE (int,char*,int,int,struct cpu_key*) ;
 int ROUND_UP (int) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int TYPE_DIRECT ;
 scalar_t__ is_statdata_le_ih (struct item_head*) ;
 int journal_begin (struct reiserfs_transaction_handle*,TYPE_2__*,scalar_t__) ;
 int journal_end (struct reiserfs_transaction_handle*,TYPE_2__*,int) ;
 scalar_t__ journal_transaction_should_end (struct reiserfs_transaction_handle*,int ) ;
 int le_ih_k_offset (struct item_head*) ;
 int make_cpu_key (struct cpu_key*,struct inode*,int ,int ,int) ;
 int max_reiserfs_offset (struct inode*) ;
 int op_bytes_number (struct item_head*,int ) ;
 int pathrelse (TYPE_3__*) ;
 int reiserfs_check_path (TYPE_3__*) ;
 int reiserfs_cut_from_item (struct reiserfs_transaction_handle*,TYPE_3__*,struct cpu_key*,struct inode*,struct page*,int) ;
 int reiserfs_error (TYPE_2__*,char*,char*,...) ;
 scalar_t__ reiserfs_transaction_free_space (struct reiserfs_transaction_handle*) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_warning (TYPE_2__*,char*,char*) ;
 TYPE_3__ s_search_path ;
 int search_for_position_by_key (TYPE_2__*,struct cpu_key*,TYPE_3__*) ;
 int set_cpu_key_k_offset (struct cpu_key*,int) ;
 int truncate_directory (struct reiserfs_transaction_handle*,struct inode*) ;

int reiserfs_do_truncate(struct reiserfs_transaction_handle *th,
     struct inode *inode,
    struct page *page,
    int update_timestamps



    )
{
 INITIALIZE_PATH(s_search_path);
 struct item_head *p_le_ih;
 struct cpu_key s_item_key;
 loff_t file_size,
  new_file_size;
 int deleted;
 int retval;
 int err = 0;

 BUG_ON(!th->t_trans_id);
 if (!
     (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode)
      || S_ISLNK(inode->i_mode)))
  return 0;

 if (S_ISDIR(inode->i_mode)) {

  truncate_directory(th, inode);
  return 0;
 }


 new_file_size = inode->i_size;


 make_cpu_key(&s_item_key, inode, max_reiserfs_offset(inode),
       TYPE_DIRECT, 3);

 retval =
     search_for_position_by_key(inode->i_sb, &s_item_key,
           &s_search_path);
 if (retval == IO_ERROR) {
  reiserfs_error(inode->i_sb, "vs-5657",
          "i/o failure occurred trying to truncate %K",
          &s_item_key);
  err = -EIO;
  goto out;
 }
 if (retval == POSITION_FOUND || retval == FILE_NOT_FOUND) {
  reiserfs_error(inode->i_sb, "PAP-5660",
          "wrong result %d of search for %K", retval,
          &s_item_key);

  err = -EIO;
  goto out;
 }

 s_search_path.pos_in_item--;


 p_le_ih = PATH_PITEM_HEAD(&s_search_path);
 if (is_statdata_le_ih(p_le_ih))
  file_size = 0;
 else {
  loff_t offset = le_ih_k_offset(p_le_ih);
  int bytes =
      op_bytes_number(p_le_ih, inode->i_sb->s_blocksize);




  file_size = offset + bytes - 1;
 }




 if (new_file_size == 0)
  s_search_path.reada = PATH_READA | PATH_READA_BACK;

 if (file_size == 0 || file_size < new_file_size) {
  goto update_and_out;
 }


 set_cpu_key_k_offset(&s_item_key, file_size);

 do {

  deleted =
      reiserfs_cut_from_item(th, &s_search_path, &s_item_key,
        inode, page, new_file_size);
  if (deleted < 0) {
   reiserfs_warning(inode->i_sb, "vs-5665",
      "reiserfs_cut_from_item failed");
   reiserfs_check_path(&s_search_path);
   return 0;
  }

  RFALSE(deleted > file_size,
         "PAP-5670: reiserfs_cut_from_item: too many bytes deleted: deleted %d, file_size %lu, item_key %K",
         deleted, file_size, &s_item_key);


  file_size -= deleted;

  set_cpu_key_k_offset(&s_item_key, file_size);
  if (journal_transaction_should_end(th, 0) ||
      reiserfs_transaction_free_space(th) <= JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD) {
   int orig_len_alloc = th->t_blocks_allocated;
   pathrelse(&s_search_path);

   if (update_timestamps) {
    inode->i_mtime = CURRENT_TIME_SEC;
    inode->i_ctime = CURRENT_TIME_SEC;
   }
   reiserfs_update_sd(th, inode);

   err = journal_end(th, inode->i_sb, orig_len_alloc);
   if (err)
    goto out;
   err = journal_begin(th, inode->i_sb,
         JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD + JOURNAL_PER_BALANCE_CNT * 4) ;
   if (err)
    goto out;
   reiserfs_update_inode_transaction(inode);
  }
 } while (file_size > ROUND_UP(new_file_size) &&
   search_for_position_by_key(inode->i_sb, &s_item_key,
         &s_search_path) == POSITION_FOUND);

 RFALSE(file_size > ROUND_UP(new_file_size),
        "PAP-5680: truncate did not finish: new_file_size %Ld, current %Ld, oid %d",
        new_file_size, file_size, s_item_key.on_disk_key.k_objectid);

      update_and_out:
 if (update_timestamps) {

  inode->i_mtime = CURRENT_TIME_SEC;
  inode->i_ctime = CURRENT_TIME_SEC;
 }
 reiserfs_update_sd(th, inode);

      out:
 pathrelse(&s_search_path);
 return err;
}
