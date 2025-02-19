
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct super_block {int dummy; } ;
struct reiserfs_journal_list {int j_timestamp; int j_commit_left; } ;
struct TYPE_2__ {struct list_head* next; } ;
struct reiserfs_journal {TYPE_1__ j_journal_list; } ;
struct list_head {int dummy; } ;


 struct reiserfs_journal_list* JOURNAL_LIST_ENTRY (struct list_head*) ;
 int JOURNAL_MAX_TRANS_AGE ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 scalar_t__ atomic_read (int *) ;
 int flush_used_journal_lists (struct super_block*,struct reiserfs_journal_list*) ;
 int get_seconds () ;
 int list_empty (TYPE_1__*) ;
 scalar_t__ test_transaction (struct super_block*,struct reiserfs_journal_list*) ;

__attribute__((used)) static void flush_old_journal_lists(struct super_block *s)
{
 struct reiserfs_journal *journal = SB_JOURNAL(s);
 struct reiserfs_journal_list *jl;
 struct list_head *entry;
 time_t now = get_seconds();

 while (!list_empty(&journal->j_journal_list)) {
  entry = journal->j_journal_list.next;
  jl = JOURNAL_LIST_ENTRY(entry);

  if (jl->j_timestamp < (now - (JOURNAL_MAX_TRANS_AGE * 4)) &&
      atomic_read(&jl->j_commit_left) == 0 &&
      test_transaction(s, jl)) {
   flush_used_journal_lists(s, jl);
  } else {
   break;
  }
 }
}
