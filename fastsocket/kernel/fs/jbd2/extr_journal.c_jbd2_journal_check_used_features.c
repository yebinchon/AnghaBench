
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int j_format_version; TYPE_2__* j_superblock; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_5__ {int s_feature_incompat; int s_feature_ro_compat; int s_feature_compat; } ;
typedef TYPE_2__ journal_superblock_t ;


 unsigned long be32_to_cpu (int ) ;

int jbd2_journal_check_used_features (journal_t *journal, unsigned long compat,
     unsigned long ro, unsigned long incompat)
{
 journal_superblock_t *sb;

 if (!compat && !ro && !incompat)
  return 1;
 if (journal->j_format_version == 1)
  return 0;

 sb = journal->j_superblock;

 if (((be32_to_cpu(sb->s_feature_compat) & compat) == compat) &&
     ((be32_to_cpu(sb->s_feature_ro_compat) & ro) == ro) &&
     ((be32_to_cpu(sb->s_feature_incompat) & incompat) == incompat))
  return 1;

 return 0;
}
