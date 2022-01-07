
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int s_journal; } ;


 TYPE_1__* EXT3_SB (struct super_block*) ;
 scalar_t__ journal_start_commit (int ,int *) ;
 int log_wait_commit (int ,int ) ;
 int trace_ext3_sync_fs (struct super_block*,int) ;

__attribute__((used)) static int ext3_sync_fs(struct super_block *sb, int wait)
{
 tid_t target;

 trace_ext3_sync_fs(sb, wait);
 if (journal_start_commit(EXT3_SB(sb)->s_journal, &target)) {
  if (wait)
   log_wait_commit(EXT3_SB(sb)->s_journal, target);
 }
 return 0;
}
