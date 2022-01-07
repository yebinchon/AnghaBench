
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;


 int mlog_errno (int) ;
 int ocfs2_drop_lock (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 int ocfs2_mark_lockres_freeing (struct ocfs2_lock_res*) ;

void ocfs2_simple_drop_lockres(struct ocfs2_super *osb,
          struct ocfs2_lock_res *lockres)
{
 int ret;

 ocfs2_mark_lockres_freeing(lockres);
 ret = ocfs2_drop_lock(osb, lockres);
 if (ret)
  mlog_errno(ret);
}
