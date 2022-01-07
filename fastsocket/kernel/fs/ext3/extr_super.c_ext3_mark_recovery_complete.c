
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct ext3_super_block {int dummy; } ;
typedef int journal_t ;
struct TYPE_2__ {int * s_journal; } ;


 int EXT3_CLEAR_INCOMPAT_FEATURE (struct super_block*,int ) ;
 int EXT3_FEATURE_INCOMPAT_RECOVER ;
 scalar_t__ EXT3_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int MS_RDONLY ;
 int ext3_commit_super (struct super_block*,struct ext3_super_block*,int) ;
 scalar_t__ journal_flush (int *) ;
 int journal_lock_updates (int *) ;
 int journal_unlock_updates (int *) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static void ext3_mark_recovery_complete(struct super_block * sb,
     struct ext3_super_block * es)
{
 journal_t *journal = EXT3_SB(sb)->s_journal;

 journal_lock_updates(journal);
 if (journal_flush(journal) < 0)
  goto out;

 lock_super(sb);
 if (EXT3_HAS_INCOMPAT_FEATURE(sb, EXT3_FEATURE_INCOMPAT_RECOVER) &&
     sb->s_flags & MS_RDONLY) {
  EXT3_CLEAR_INCOMPAT_FEATURE(sb, EXT3_FEATURE_INCOMPAT_RECOVER);
  ext3_commit_super(sb, es, 1);
 }
 unlock_super(sb);

out:
 journal_unlock_updates(journal);
}
