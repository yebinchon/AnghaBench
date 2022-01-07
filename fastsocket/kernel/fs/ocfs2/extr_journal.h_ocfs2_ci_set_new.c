
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {TYPE_1__* journal; } ;
struct ocfs2_caching_info {int ci_created_trans; } ;
struct TYPE_2__ {int j_trans_id; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trans_inc_lock ;

__attribute__((used)) static inline void ocfs2_ci_set_new(struct ocfs2_super *osb,
        struct ocfs2_caching_info *ci)
{
 spin_lock(&trans_inc_lock);
 ci->ci_created_trans = osb->journal->j_trans_id;
 spin_unlock(&trans_inc_lock);
}
