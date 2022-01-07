
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* j_superblock; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_7__ {int s_feature_incompat; int s_feature_ro_compat; int s_feature_compat; } ;
typedef TYPE_2__ journal_superblock_t ;


 int cpu_to_be32 (unsigned long) ;
 int jbd2_journal_check_available_features (TYPE_1__*,unsigned long,unsigned long,unsigned long) ;
 scalar_t__ jbd2_journal_check_used_features (TYPE_1__*,unsigned long,unsigned long,unsigned long) ;
 int jbd_debug (int,char*,unsigned long,unsigned long,unsigned long) ;

int jbd2_journal_set_features (journal_t *journal, unsigned long compat,
     unsigned long ro, unsigned long incompat)
{
 journal_superblock_t *sb;

 if (jbd2_journal_check_used_features(journal, compat, ro, incompat))
  return 1;

 if (!jbd2_journal_check_available_features(journal, compat, ro, incompat))
  return 0;

 jbd_debug(1, "Setting new features 0x%lx/0x%lx/0x%lx\n",
    compat, ro, incompat);

 sb = journal->j_superblock;

 sb->s_feature_compat |= cpu_to_be32(compat);
 sb->s_feature_ro_compat |= cpu_to_be32(ro);
 sb->s_feature_incompat |= cpu_to_be32(incompat);

 return 1;
}
