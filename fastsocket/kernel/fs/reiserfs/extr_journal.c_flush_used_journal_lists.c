
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int * next; } ;
struct reiserfs_journal_list {scalar_t__ j_trans_id; TYPE_1__ j_list; int j_state; int j_nonzerolen; int j_commit_left; } ;
struct reiserfs_journal {int j_journal_list; } ;


 struct reiserfs_journal_list* JOURNAL_LIST_ENTRY (int *) ;
 int LIST_TOUCHED ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 unsigned long atomic_read (int *) ;
 int flush_journal_list (struct super_block*,struct reiserfs_journal_list*,int) ;
 int kupdate_transactions (struct super_block*,struct reiserfs_journal_list*,struct reiserfs_journal_list**,unsigned int*,unsigned long,int) ;
 scalar_t__ reiserfs_data_log (struct super_block*) ;

__attribute__((used)) static int flush_used_journal_lists(struct super_block *s,
        struct reiserfs_journal_list *jl)
{
 unsigned long len = 0;
 unsigned long cur_len;
 int ret;
 int i;
 int limit = 256;
 struct reiserfs_journal_list *tjl;
 struct reiserfs_journal_list *flush_jl;
 unsigned int trans_id;
 struct reiserfs_journal *journal = SB_JOURNAL(s);

 flush_jl = tjl = jl;


 if (reiserfs_data_log(s))
  limit = 1024;

 for (i = 0; i < 256 && len < limit; i++) {
  if (atomic_read(&tjl->j_commit_left) ||
      tjl->j_trans_id < jl->j_trans_id) {
   break;
  }
  cur_len = atomic_read(&tjl->j_nonzerolen);
  if (cur_len > 0) {
   tjl->j_state &= ~LIST_TOUCHED;
  }
  len += cur_len;
  flush_jl = tjl;
  if (tjl->j_list.next == &journal->j_journal_list)
   break;
  tjl = JOURNAL_LIST_ENTRY(tjl->j_list.next);
 }




 if (flush_jl != jl) {
  ret = kupdate_transactions(s, jl, &tjl, &trans_id, len, i);
 }
 flush_journal_list(s, flush_jl, 1);
 return 0;
}
