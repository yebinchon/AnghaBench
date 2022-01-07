
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {scalar_t__ j_len; struct reiserfs_journal_cnode* j_realblock; int j_nonzerolen; int j_state; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* next; struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
struct buffer_chunk {int dummy; } ;


 int BUG () ;
 int LIST_TOUCHED ;
 int add_to_chunk (struct buffer_chunk*,struct buffer_head*,int *,int ) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_journal_dirty (struct buffer_head*) ;
 scalar_t__ buffer_journal_prepared (struct buffer_head*) ;
 scalar_t__ can_dirty (struct reiserfs_journal_cnode*) ;
 int cond_resched () ;
 int del_from_work_list (struct super_block*,struct reiserfs_journal_list*) ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int write_chunk ;

__attribute__((used)) static int write_one_transaction(struct super_block *s,
     struct reiserfs_journal_list *jl,
     struct buffer_chunk *chunk)
{
 struct reiserfs_journal_cnode *cn;
 int ret = 0;

 jl->j_state |= LIST_TOUCHED;
 del_from_work_list(s, jl);
 if (jl->j_len == 0 || atomic_read(&jl->j_nonzerolen) == 0) {
  return 0;
 }

 cn = jl->j_realblock;
 while (cn) {



  if (cn->blocknr == 0) {
   goto next;
  }
  if (cn->bh && can_dirty(cn) && buffer_dirty(cn->bh)) {
   struct buffer_head *tmp_bh;




   tmp_bh = cn->bh;
   get_bh(tmp_bh);
   lock_buffer(tmp_bh);
   if (cn->bh && can_dirty(cn) && buffer_dirty(tmp_bh)) {
    if (!buffer_journal_dirty(tmp_bh) ||
        buffer_journal_prepared(tmp_bh))
     BUG();
    add_to_chunk(chunk, tmp_bh, ((void*)0), write_chunk);
    ret++;
   } else {

    unlock_buffer(tmp_bh);
   }
   put_bh(tmp_bh);
  }
       next:
  cn = cn->next;
  cond_resched();
 }
 return ret;
}
