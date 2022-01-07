
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct treepath {int dummy; } ;
struct tree_balance {int key; } ;
struct reiserfs_transaction_handle {TYPE_1__* t_super; int t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {int i_uid; TYPE_1__* i_sb; int i_mode; } ;
struct cpu_key {int on_disk_key; } ;
struct TYPE_8__ {int s_blocksize; } ;


 int BUG_ON (int) ;
 int CARRY_ON ;
 int EDQUOT ;
 int EEXIST ;
 int EIO ;
 int ENOSPC ;
 scalar_t__ IH_SIZE ;
 int IO_ERROR ;
 int ITEM_FOUND ;
 int M_INSERT ;
 int NO_DISK_SPACE ;
 int PROC_INFO_INC (TYPE_1__*,int ) ;
 int REISERFS_DEBUG_CODE ;
 int REPEAT_SEARCH ;
 int S_ISLNK (int ) ;
 int UNFM_P_SIZE ;
 int do_balance (struct tree_balance*,struct item_head*,char const*,int ) ;
 int fix_nodes (int ,struct tree_balance*,struct item_head*,char const*) ;
 scalar_t__ fs_changed (int,TYPE_1__*) ;
 int get_generation (TYPE_1__*) ;
 int head2type (struct item_head*) ;
 int ih_item_len (struct item_head*) ;
 int init_tb_struct (struct reiserfs_transaction_handle*,struct tree_balance*,TYPE_1__*,struct treepath*,scalar_t__) ;
 int insert_item_restarted ;
 scalar_t__ is_direct_le_ih (struct item_head*) ;
 int pathrelse (struct treepath*) ;
 int reiserfs_debug (TYPE_1__*,int ,char*,int,int ,int ) ;
 int reiserfs_warning (TYPE_1__*,char*,char*,struct cpu_key const*) ;
 int search_item (TYPE_1__*,struct cpu_key const*,struct treepath*) ;
 int unfix_nodes (struct tree_balance*) ;
 scalar_t__ vfs_dq_alloc_space_nodirty (struct inode*,int) ;
 int vfs_dq_free_space_nodirty (struct inode*,int) ;

int reiserfs_insert_item(struct reiserfs_transaction_handle *th,
    struct treepath *path, const struct cpu_key *key,
    struct item_head *ih, struct inode *inode,
    const char *body)
{
 struct tree_balance s_ins_balance;
 int retval;
 int fs_gen = 0;
 int quota_bytes = 0;

 BUG_ON(!th->t_trans_id);

 if (inode) {
  fs_gen = get_generation(inode->i_sb);
  quota_bytes = ih_item_len(ih);




  if (!S_ISLNK(inode->i_mode) && is_direct_le_ih(ih))
   quota_bytes = inode->i_sb->s_blocksize + UNFM_P_SIZE;







  if (vfs_dq_alloc_space_nodirty(inode, quota_bytes)) {
   pathrelse(path);
   return -EDQUOT;
  }
 }
 init_tb_struct(th, &s_ins_balance, th->t_super, path,
         IH_SIZE + ih_item_len(ih));




 if (inode && fs_changed(fs_gen, inode->i_sb)) {
  goto search_again;
 }

 while ((retval =
  fix_nodes(M_INSERT, &s_ins_balance, ih,
     body)) == REPEAT_SEARCH) {
       search_again:

  PROC_INFO_INC(th->t_super, insert_item_restarted);
  retval = search_item(th->t_super, key, path);
  if (retval == IO_ERROR) {
   retval = -EIO;
   goto error_out;
  }
  if (retval == ITEM_FOUND) {
   reiserfs_warning(th->t_super, "PAP-5760",
      "key %K already exists in the tree",
      key);
   retval = -EEXIST;
   goto error_out;
  }
 }


 if (retval == CARRY_ON) {
  do_balance(&s_ins_balance, ih, body, M_INSERT);
  return 0;
 }

 retval = (retval == NO_DISK_SPACE) ? -ENOSPC : -EIO;
      error_out:

 unfix_nodes(&s_ins_balance);





 if (inode)
  vfs_dq_free_space_nodirty(inode, quota_bytes);
 return retval;
}
