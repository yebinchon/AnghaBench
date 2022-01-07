
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct super_block {int s_blocksize; } ;
struct reiserfs_transaction_handle {int t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int pos_in_item ;
typedef scalar_t__ __u32 ;
typedef int __le32 ;


 int BUG_ON (int) ;
 scalar_t__ B_I_PITEM (struct buffer_head*,struct item_head*) ;
 int IH_SIZE ;
 int I_UNFM_NUM (struct item_head*) ;
 scalar_t__ JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD ;
 int M_CONVERT ;
 int M_CUT ;
 char M_DELETE ;
 struct item_head* PATH_PITEM_HEAD (struct treepath*) ;
 struct buffer_head* PATH_PLAST_BUFFER (struct treepath*) ;
 scalar_t__ POSITION_FOUND ;
 int RFALSE (int,char*) ;
 int UNFM_P_SIZE ;
 int cond_resched () ;
 int copy_item_head (struct item_head*,struct item_head*) ;
 scalar_t__ get_block_num (int *,int ) ;
 int ih_item_len (struct item_head*) ;
 scalar_t__ is_direct_le_ih (struct item_head*) ;
 scalar_t__ is_direntry_le_ih (struct item_head*) ;
 scalar_t__ is_statdata_le_ih (struct item_head*) ;
 scalar_t__ item_moved (struct item_head*,struct treepath*) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct super_block*,struct buffer_head*) ;
 int le_ih_k_offset (struct item_head*) ;
 unsigned long long max_reiserfs_offset (struct inode*) ;
 char prepare_for_direct_item (struct treepath*,struct item_head*,struct inode*,unsigned long long,int*) ;
 char prepare_for_direntry_item (struct treepath*,struct item_head*,struct inode*,unsigned long long,int*) ;
 int put_block_num (int *,int ,int ) ;
 int reiserfs_free_block (struct reiserfs_transaction_handle*,struct inode*,scalar_t__,int) ;
 int reiserfs_prepare_for_journal (struct super_block*,struct buffer_head*,int) ;
 int reiserfs_restore_prepared_buffer (struct super_block*,struct buffer_head*) ;
 scalar_t__ reiserfs_transaction_free_space (struct reiserfs_transaction_handle*) ;
 scalar_t__ search_for_position_by_key (struct super_block*,struct cpu_key const*,struct treepath*) ;

__attribute__((used)) static char prepare_for_delete_or_cut(struct reiserfs_transaction_handle *th, struct inode *inode, struct treepath *path, const struct cpu_key *item_key, int *removed,

          int *cut_size, unsigned long long new_file_length
    )
{
 struct super_block *sb = inode->i_sb;
 struct item_head *p_le_ih = PATH_PITEM_HEAD(path);
 struct buffer_head *bh = PATH_PLAST_BUFFER(path);

 BUG_ON(!th->t_trans_id);


 if (is_statdata_le_ih(p_le_ih)) {

  RFALSE(new_file_length != max_reiserfs_offset(inode),
         "PAP-5210: mode must be M_DELETE");

  *cut_size = -(IH_SIZE + ih_item_len(p_le_ih));
  return M_DELETE;
 }


 if (is_direntry_le_ih(p_le_ih))
  return prepare_for_direntry_item(path, p_le_ih, inode,
       new_file_length,
       cut_size);


 if (is_direct_le_ih(p_le_ih))
  return prepare_for_direct_item(path, p_le_ih, inode,
            new_file_length, cut_size);


 {
     int blk_size = sb->s_blocksize;
     struct item_head s_ih;
     int need_re_search;
     int delete = 0;
     int result = M_CUT;
     int pos = 0;

     if ( new_file_length == max_reiserfs_offset (inode) ) {


  new_file_length = 0;
  delete = 1;
     }

     do {
  need_re_search = 0;
  *cut_size = 0;
  bh = PATH_PLAST_BUFFER(path);
  copy_item_head(&s_ih, PATH_PITEM_HEAD(path));
  pos = I_UNFM_NUM(&s_ih);

  while (le_ih_k_offset (&s_ih) + (pos - 1) * blk_size > new_file_length) {
      __le32 *unfm;
      __u32 block;




      if (!delete && (*cut_size) != 0 &&
   reiserfs_transaction_free_space(th) < JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD)
   break;

      unfm = (__le32 *)B_I_PITEM(bh, &s_ih) + pos - 1;
      block = get_block_num(unfm, 0);

      if (block != 0) {
   reiserfs_prepare_for_journal(sb, bh, 1);
   put_block_num(unfm, 0, 0);
   journal_mark_dirty(th, sb, bh);
   reiserfs_free_block(th, inode, block, 1);
      }

      cond_resched();

      if (item_moved (&s_ih, path)) {
   need_re_search = 1;
   break;
      }

      pos --;
      (*removed)++;
      (*cut_size) -= UNFM_P_SIZE;

      if (pos == 0) {
   (*cut_size) -= IH_SIZE;
   result = M_DELETE;
   break;
      }
  }



  reiserfs_restore_prepared_buffer(sb, bh);
     } while (need_re_search &&
       search_for_position_by_key(sb, item_key, path) == POSITION_FOUND);
     pos_in_item(path) = pos * UNFM_P_SIZE;

     if (*cut_size == 0) {


  result = M_CONVERT;
     }
     return result;
 }
}
