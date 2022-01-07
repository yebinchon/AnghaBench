
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {unsigned int j_trans_id; scalar_t__ j_refcount; } ;
struct list_head {struct list_head* next; } ;
struct reiserfs_journal {struct list_head j_journal_list; } ;


 int BUG_ON (int) ;
 struct reiserfs_journal_list* JOURNAL_LIST_ENTRY (struct list_head*) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int flush_journal_list (struct super_block*,struct reiserfs_journal_list*,int ) ;

__attribute__((used)) static int flush_older_journal_lists(struct super_block *sb,
         struct reiserfs_journal_list *jl)
{
 struct list_head *entry;
 struct reiserfs_journal_list *other_jl;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 unsigned int trans_id = jl->j_trans_id;




      restart:
 entry = journal->j_journal_list.next;

 if (entry == &journal->j_journal_list)
  return 0;
 other_jl = JOURNAL_LIST_ENTRY(entry);
 if (other_jl->j_trans_id < trans_id) {
  BUG_ON(other_jl->j_refcount <= 0);

  flush_journal_list(sb, other_jl, 0);


  goto restart;
 }
 return 0;
}
