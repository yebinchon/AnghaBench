
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_trans_id; } ;
struct reiserfs_list_bitmap {int dummy; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* hnext; struct buffer_head* bh; TYPE_2__* jlist; int state; struct super_block* sb; } ;
struct reiserfs_journal {int j_list_hash_table; TYPE_1__* j_current_jl; int j_hash_table; } ;
struct buffer_head {int b_count; } ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_4__ {int j_nonzerolen; } ;
struct TYPE_3__ {struct reiserfs_list_bitmap* j_list_bitmap; } ;


 int BLOCK_FREED ;
 int BUG_ON (int) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ buffer_journal_new (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_journal_dirty (struct buffer_head*) ;
 int clear_buffer_journal_new (struct buffer_head*) ;
 int clear_buffer_journal_test (struct buffer_head*) ;
 int clear_prepared_bits (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 struct reiserfs_journal_cnode* get_journal_hash_dev (struct super_block*,int ,scalar_t__) ;
 int put_bh (struct buffer_head*) ;
 int reiserfs_clean_and_file_buffer (struct buffer_head*) ;
 int reiserfs_panic (struct super_block*,char*,char*) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 int release_buffer_page (struct buffer_head*) ;
 int remove_from_transaction (struct super_block*,scalar_t__,int) ;
 int set_bit (int ,int *) ;
 int set_bit_in_list_bitmap (struct super_block*,scalar_t__,struct reiserfs_list_bitmap*) ;

int journal_mark_freed(struct reiserfs_transaction_handle *th,
         struct super_block *sb, b_blocknr_t blocknr)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 struct reiserfs_journal_cnode *cn = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 struct reiserfs_list_bitmap *jb = ((void*)0);
 int cleaned = 0;
 BUG_ON(!th->t_trans_id);

 cn = get_journal_hash_dev(sb, journal->j_hash_table, blocknr);
 if (cn && cn->bh) {
  bh = cn->bh;
  get_bh(bh);
 }

 if (bh && buffer_journal_new(bh)) {
  clear_buffer_journal_new(bh);
  clear_prepared_bits(bh);
  reiserfs_clean_and_file_buffer(bh);
  cleaned = remove_from_transaction(sb, blocknr, cleaned);
 } else {

  jb = journal->j_current_jl->j_list_bitmap;
  if (!jb) {
   reiserfs_panic(sb, "journal-1702",
           "journal_list_bitmap is NULL");
  }
  set_bit_in_list_bitmap(sb, blocknr, jb);



  if (bh) {
   clear_prepared_bits(bh);
   reiserfs_clean_and_file_buffer(bh);
  }
  cleaned = remove_from_transaction(sb, blocknr, cleaned);


  cn = get_journal_hash_dev(sb, journal->j_list_hash_table,
       blocknr);
  while (cn) {
   if (sb == cn->sb && blocknr == cn->blocknr) {
    set_bit(BLOCK_FREED, &cn->state);
    if (cn->bh) {
     if (!cleaned) {



      clear_buffer_journal_dirty(cn->
            bh);
      clear_buffer_dirty(cn->bh);
      clear_buffer_journal_test(cn->
           bh);
      cleaned = 1;
      put_bh(cn->bh);
      if (atomic_read
          (&(cn->bh->b_count)) < 0) {
       reiserfs_warning(sb,
         "journal-2138",
         "cn->bh->b_count < 0");
      }
     }
     if (cn->jlist) {
      atomic_dec(&
          (cn->jlist->
           j_nonzerolen));
     }
     cn->bh = ((void*)0);
    }
   }
   cn = cn->hnext;
  }
 }

 if (bh)
  release_buffer_page(bh);
 return 0;
}
