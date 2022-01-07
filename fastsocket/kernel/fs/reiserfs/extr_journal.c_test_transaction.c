
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {scalar_t__ j_len; struct reiserfs_journal_cnode* j_realblock; int j_nonzerolen; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* next; scalar_t__ bh; } ;


 scalar_t__ atomic_read (int *) ;
 int cond_resched () ;
 int newer_jl_done (struct reiserfs_journal_cnode*) ;

__attribute__((used)) static int test_transaction(struct super_block *s,
                            struct reiserfs_journal_list *jl)
{
 struct reiserfs_journal_cnode *cn;

 if (jl->j_len == 0 || atomic_read(&jl->j_nonzerolen) == 0)
  return 1;

 cn = jl->j_realblock;
 while (cn) {



  if (cn->blocknr == 0) {
   goto next;
  }
  if (cn->bh && !newer_jl_done(cn))
   return 0;
       next:
  cn = cn->next;
  cond_resched();
 }
 return 0;
}
