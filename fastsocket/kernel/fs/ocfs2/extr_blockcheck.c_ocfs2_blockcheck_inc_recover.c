
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_blockcheck_stats {int b_lock; scalar_t__ b_recover_count; } ;


 int ML_NOTICE ;
 int mlog (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_blockcheck_inc_recover(struct ocfs2_blockcheck_stats *stats)
{
 u64 new_count;

 if (!stats)
  return;

 spin_lock(&stats->b_lock);
 stats->b_recover_count++;
 new_count = stats->b_recover_count;
 spin_unlock(&stats->b_lock);

 if (!new_count)
  mlog(ML_NOTICE, "ECC recovery count has wrapped\n");
}
