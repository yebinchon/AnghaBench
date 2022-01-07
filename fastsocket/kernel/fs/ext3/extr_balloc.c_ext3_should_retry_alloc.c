
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_id; } ;
struct TYPE_3__ {int s_journal; } ;


 TYPE_1__* EXT3_SB (struct super_block*) ;
 int ext3_has_free_blocks (TYPE_1__*) ;
 int jbd_debug (int,char*,int ) ;
 int journal_force_commit_nested (int ) ;

int ext3_should_retry_alloc(struct super_block *sb, int *retries)
{
 if (!ext3_has_free_blocks(EXT3_SB(sb)) || (*retries)++ > 3)
  return 0;

 jbd_debug(1, "%s: retrying operation after ENOSPC\n", sb->s_id);

 return journal_force_commit_nested(EXT3_SB(sb)->s_journal);
}
