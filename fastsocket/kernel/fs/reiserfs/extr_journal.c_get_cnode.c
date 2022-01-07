
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* next; int * prev; } ;
struct reiserfs_journal {scalar_t__ j_cnode_free; struct reiserfs_journal_cnode* j_cnode_free_list; int j_cnode_used; } ;


 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int memset (struct reiserfs_journal_cnode*,int ,int) ;
 int reiserfs_check_lock_depth (struct super_block*,char*) ;

__attribute__((used)) static struct reiserfs_journal_cnode *get_cnode(struct super_block *sb)
{
 struct reiserfs_journal_cnode *cn;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);

 reiserfs_check_lock_depth(sb, "get_cnode");

 if (journal->j_cnode_free <= 0) {
  return ((void*)0);
 }
 journal->j_cnode_used++;
 journal->j_cnode_free--;
 cn = journal->j_cnode_free_list;
 if (!cn) {
  return cn;
 }
 if (cn->next) {
  cn->next->prev = ((void*)0);
 }
 journal->j_cnode_free_list = cn->next;
 memset(cn, 0, sizeof(struct reiserfs_journal_cnode));
 return cn;
}
