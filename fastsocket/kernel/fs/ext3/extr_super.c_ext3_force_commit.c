
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
typedef int journal_t ;
struct TYPE_2__ {int * s_journal; } ;


 TYPE_1__* EXT3_SB (struct super_block*) ;
 int MS_RDONLY ;
 int ext3_journal_force_commit (int *) ;

int ext3_force_commit(struct super_block *sb)
{
 journal_t *journal;
 int ret;

 if (sb->s_flags & MS_RDONLY)
  return 0;

 journal = EXT3_SB(sb)->s_journal;
 ret = ext3_journal_force_commit(journal);
 return ret;
}
