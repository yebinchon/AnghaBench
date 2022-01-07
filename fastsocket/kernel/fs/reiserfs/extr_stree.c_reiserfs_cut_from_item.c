
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treepath {int dummy; } ;
struct tree_balance {int* insert_size; int tb_path; } ;
struct super_block {int s_blocksize; } ;
struct reiserfs_transaction_handle {int t_trans_id; } ;
struct page {int dummy; } ;
struct item_head {int dummy; } ;
struct inode {int i_uid; struct super_block* i_sb; int i_mode; } ;
struct cpu_key {int key_length; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_flags; int i_first_direct_byte; } ;


 int BUG_ON (int) ;
 int CARRY_ON ;
 int EIO ;
 int ENOENT ;
 int IO_ERROR ;
 char M_CONVERT ;
 char M_CUT ;
 char M_DELETE ;
 char M_INSERT ;
 char M_PASTE ;
 char M_SKIP_BALANCING ;
 int NO_DISK_SPACE ;
 scalar_t__ PATH_LAST_POSITION (struct treepath*) ;
 struct item_head* PATH_PITEM_HEAD (int ) ;
 int PATH_PLAST_BUFFER (struct treepath*) ;
 int POSITION_FOUND ;
 int POSITION_NOT_FOUND ;
 int PROC_INFO_INC (struct super_block*,int ) ;
 int REISERFS_DEBUG_CODE ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int REPEAT_SEARCH ;
 int RFALSE (int,char*) ;
 int S_ISLNK (int ) ;
 int TYPE_INDIRECT ;
 int U32_MAX ;
 int UNFM_P_SIZE ;
 int calc_deleted_bytes_number (struct tree_balance*,char) ;
 int cut_from_item_restarted ;
 int do_balance (struct tree_balance*,int *,int *,char) ;
 int fix_nodes (char,struct tree_balance*,int *,int *) ;
 struct item_head* get_ih (struct treepath*) ;
 int i_pack_on_close_mask ;
 int ih_item_len (struct item_head*) ;
 int indirect_to_direct_roll_back (struct reiserfs_transaction_handle*,struct inode*,struct treepath*) ;
 int init_tb_struct (struct reiserfs_transaction_handle*,struct tree_balance*,struct super_block*,struct treepath*,int) ;
 scalar_t__ is_direct_le_ih (struct item_head*) ;
 int is_indirect_le_ih (struct item_head*) ;
 int le_ih_k_offset (struct item_head*) ;
 int maybe_indirect_to_direct (struct reiserfs_transaction_handle*,struct inode*,struct page*,struct treepath*,struct cpu_key*,int,char*) ;
 int pathrelse (struct treepath*) ;
 char prepare_for_delete_or_cut (struct reiserfs_transaction_handle*,struct inode*,struct treepath*,struct cpu_key*,int*,int*,int) ;
 int print_block (int ,int,scalar_t__,scalar_t__) ;
 int reiserfs_debug (struct super_block*,int ,char*,int,int ,char) ;
 int reiserfs_panic (struct super_block*,char*,char*,struct cpu_key*,...) ;
 int reiserfs_warning (struct super_block*,char*,char*,...) ;
 int search_for_position_by_key (struct super_block*,struct cpu_key*,struct treepath*) ;
 int set_cpu_key_k_offset (struct cpu_key*,int ) ;
 int set_cpu_key_k_type (struct cpu_key*,int ) ;
 int unfix_nodes (struct tree_balance*) ;
 int unmap_buffers (struct page*,int) ;
 int vfs_dq_free_space_nodirty (struct inode*,int) ;

int reiserfs_cut_from_item(struct reiserfs_transaction_handle *th,
      struct treepath *path,
      struct cpu_key *item_key,
      struct inode *inode,
      struct page *page, loff_t new_file_size)
{
 struct super_block *sb = inode->i_sb;




 struct tree_balance s_cut_balance;
 struct item_head *p_le_ih;
 int cut_size = 0,
     ret_value = CARRY_ON, removed = 0,
     is_inode_locked = 0;
 char mode;
 int retval2 = -1;
 int quota_cut_bytes;
 loff_t tail_pos = 0;

 BUG_ON(!th->t_trans_id);

 init_tb_struct(th, &s_cut_balance, inode->i_sb, path,
         cut_size);



 while (1) {





  mode =
      prepare_for_delete_or_cut(th, inode, path,
           item_key, &removed,
           &cut_size, new_file_size);
  if (mode == M_CONVERT) {


   RFALSE(ret_value != CARRY_ON,
          "PAP-5570: can not convert twice");

   ret_value =
       maybe_indirect_to_direct(th, inode, page,
           path, item_key,
           new_file_size, &mode);
   if (mode == M_SKIP_BALANCING)

    return ret_value;

   is_inode_locked = 1;



   retval2 = ret_value;






   set_cpu_key_k_type(item_key, TYPE_INDIRECT);
   item_key->key_length = 4;
   new_file_size -=
       (new_file_size & (sb->s_blocksize - 1));
   tail_pos = new_file_size;
   set_cpu_key_k_offset(item_key, new_file_size + 1);
   if (search_for_position_by_key
       (sb, item_key,
        path) == POSITION_NOT_FOUND) {
    print_block(PATH_PLAST_BUFFER(path), 3,
         PATH_LAST_POSITION(path) - 1,
         PATH_LAST_POSITION(path) + 1);
    reiserfs_panic(sb, "PAP-5580", "item to "
            "convert does not exist (%K)",
            item_key);
   }
   continue;
  }
  if (cut_size == 0) {
   pathrelse(path);
   return 0;
  }

  s_cut_balance.insert_size[0] = cut_size;

  ret_value = fix_nodes(mode, &s_cut_balance, ((void*)0), ((void*)0));
  if (ret_value != REPEAT_SEARCH)
   break;

  PROC_INFO_INC(sb, cut_from_item_restarted);

  ret_value =
      search_for_position_by_key(sb, item_key, path);
  if (ret_value == POSITION_FOUND)
   continue;

  reiserfs_warning(sb, "PAP-5610", "item %K not found",
     item_key);
  unfix_nodes(&s_cut_balance);
  return (ret_value == IO_ERROR) ? -EIO : -ENOENT;
 }


 if (ret_value != CARRY_ON) {
  if (is_inode_locked) {


   indirect_to_direct_roll_back(th, inode, path);
  }
  if (ret_value == NO_DISK_SPACE)
   reiserfs_warning(sb, "reiserfs-5092",
      "NO_DISK_SPACE");
  unfix_nodes(&s_cut_balance);
  return -EIO;
 }



 RFALSE(mode == M_PASTE || mode == M_INSERT, "invalid mode");


 quota_cut_bytes =
     (mode ==
      M_DELETE) ? ih_item_len(get_ih(path)) : -s_cut_balance.
     insert_size[0];
 if (retval2 == -1)
  ret_value = calc_deleted_bytes_number(&s_cut_balance, mode);
 else
  ret_value = retval2;




 p_le_ih = PATH_PITEM_HEAD(s_cut_balance.tb_path);
 if (!S_ISLNK(inode->i_mode) && is_direct_le_ih(p_le_ih)) {
  if (mode == M_DELETE &&
      (le_ih_k_offset(p_le_ih) & (sb->s_blocksize - 1)) ==
      1) {

   REISERFS_I(inode)->i_first_direct_byte = U32_MAX;
   quota_cut_bytes = sb->s_blocksize + UNFM_P_SIZE;
  } else {
   quota_cut_bytes = 0;
  }
 }
 do_balance(&s_cut_balance, ((void*)0), ((void*)0), mode);
 if (is_inode_locked) {





  unmap_buffers(page, tail_pos);
  REISERFS_I(inode)->i_flags &= ~i_pack_on_close_mask;
 }





 vfs_dq_free_space_nodirty(inode, quota_cut_bytes);
 return ret_value;
}
