
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* hprev; TYPE_1__* jlist; struct super_block* sb; } ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_2__ {int j_commit_left; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int newer_jl_done(struct reiserfs_journal_cnode *cn)
{
 struct super_block *sb = cn->sb;
 b_blocknr_t blocknr = cn->blocknr;

 cn = cn->hprev;
 while (cn) {
  if (cn->sb == sb && cn->blocknr == blocknr && cn->jlist &&
      atomic_read(&cn->jlist->j_commit_left) != 0)
        return 0;
  cn = cn->hprev;
 }
 return 1;
}
