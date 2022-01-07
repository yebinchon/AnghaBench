
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_cnode {long blocknr; struct reiserfs_journal_cnode* hnext; struct super_block* sb; } ;


 struct reiserfs_journal_cnode* journal_hash (struct reiserfs_journal_cnode**,struct super_block*,long) ;

__attribute__((used)) static inline struct reiserfs_journal_cnode *get_journal_hash_dev(struct
          super_block
          *sb,
          struct
          reiserfs_journal_cnode
          **table,
          long bl)
{
 struct reiserfs_journal_cnode *cn;
 cn = journal_hash(table, sb, bl);
 while (cn) {
  if (cn->blocknr == bl && cn->sb == sb)
   return cn;
  cn = cn->hnext;
 }
 return (struct reiserfs_journal_cnode *)0;
}
