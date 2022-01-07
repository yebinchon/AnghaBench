
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {int dummy; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* hprev; struct reiserfs_journal_list* jlist; struct super_block* sb; } ;
typedef scalar_t__ b_blocknr_t ;



__attribute__((used)) static struct reiserfs_journal_list *find_newer_jl_for_cn(struct
         reiserfs_journal_cnode
         *cn)
{
 struct super_block *sb = cn->sb;
 b_blocknr_t blocknr = cn->blocknr;

 cn = cn->hprev;
 while (cn) {
  if (cn->sb == sb && cn->blocknr == blocknr && cn->jlist) {
   return cn->jlist;
  }
  cn = cn->hprev;
 }
 return ((void*)0);
}
