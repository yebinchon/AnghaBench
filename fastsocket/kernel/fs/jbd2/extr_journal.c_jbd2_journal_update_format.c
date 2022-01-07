
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* j_superblock; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_8__ {int h_blocktype; } ;
struct TYPE_10__ {TYPE_1__ s_header; } ;
typedef TYPE_3__ journal_superblock_t ;


 int EINVAL ;


 int be32_to_cpu (int ) ;
 int journal_convert_superblock_v1 (TYPE_2__*,TYPE_3__*) ;
 int journal_get_superblock (TYPE_2__*) ;

int jbd2_journal_update_format (journal_t *journal)
{
 journal_superblock_t *sb;
 int err;

 err = journal_get_superblock(journal);
 if (err)
  return err;

 sb = journal->j_superblock;

 switch (be32_to_cpu(sb->s_header.h_blocktype)) {
 case 128:
  return 0;
 case 129:
  return journal_convert_superblock_v1(journal, sb);
 default:
  break;
 }
 return -EINVAL;
}
