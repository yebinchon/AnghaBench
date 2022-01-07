
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext3_sb_info {scalar_t__ s_commit_interval; } ;
struct TYPE_3__ {int j_state_lock; int j_flags; scalar_t__ j_commit_interval; } ;
typedef TYPE_1__ journal_t ;


 int BARRIER ;
 int DATA_ERR_ABORT ;
 struct ext3_sb_info* EXT3_SB (struct super_block*) ;
 int JFS_ABORT_ON_SYNCDATA_ERR ;
 int JFS_BARRIER ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static void ext3_init_journal_params(struct super_block *sb, journal_t *journal)
{
 struct ext3_sb_info *sbi = EXT3_SB(sb);

 if (sbi->s_commit_interval)
  journal->j_commit_interval = sbi->s_commit_interval;




 spin_lock(&journal->j_state_lock);
 if (test_opt(sb, BARRIER))
  journal->j_flags |= JFS_BARRIER;
 else
  journal->j_flags &= ~JFS_BARRIER;
 if (test_opt(sb, DATA_ERR_ABORT))
  journal->j_flags |= JFS_ABORT_ON_SYNCDATA_ERR;
 else
  journal->j_flags &= ~JFS_ABORT_ON_SYNCDATA_ERR;
 spin_unlock(&journal->j_state_lock);
}
