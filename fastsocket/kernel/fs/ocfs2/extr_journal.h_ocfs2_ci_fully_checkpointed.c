
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_journal {int j_trans_id; } ;
struct ocfs2_caching_info {int ci_last_trans; } ;
struct TYPE_2__ {struct ocfs2_journal* journal; } ;


 TYPE_1__* OCFS2_SB (int ) ;
 int ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int time_after (int ,int ) ;
 int trans_inc_lock ;

__attribute__((used)) static inline int ocfs2_ci_fully_checkpointed(struct ocfs2_caching_info *ci)
{
 int ret;
 struct ocfs2_journal *journal =
  OCFS2_SB(ocfs2_metadata_cache_get_super(ci))->journal;

 spin_lock(&trans_inc_lock);
 ret = time_after(journal->j_trans_id, ci->ci_last_trans);
 spin_unlock(&trans_inc_lock);
 return ret;
}
