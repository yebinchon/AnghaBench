
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;


 int _RET_IP_ ;
 int __ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ) ;

__attribute__((used)) static inline void ocfs2_cluster_unlock(struct ocfs2_super *osb,
     struct ocfs2_lock_res *lockres,
     int level)
{
 __ocfs2_cluster_unlock(osb, lockres, level, _RET_IP_);
}
