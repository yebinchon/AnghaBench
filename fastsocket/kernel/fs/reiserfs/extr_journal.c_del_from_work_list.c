
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {int j_working_list; } ;
struct reiserfs_journal {int j_num_work_lists; } ;


 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void del_from_work_list(struct super_block *s,
          struct reiserfs_journal_list *jl)
{
 struct reiserfs_journal *journal = SB_JOURNAL(s);
 if (!list_empty(&jl->j_working_list)) {
  list_del_init(&jl->j_working_list);
  journal->j_num_work_lists--;
 }
}
