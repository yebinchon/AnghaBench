
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mem_dqinfo {int dummy; } ;
struct ocfs2_lock_res {scalar_t__ l_type; scalar_t__ l_priv; } ;


 int BUG_ON (int) ;
 scalar_t__ OCFS2_LOCK_TYPE_QINFO ;

__attribute__((used)) static inline struct ocfs2_mem_dqinfo *ocfs2_lock_res_qinfo(struct ocfs2_lock_res *lockres)
{
 BUG_ON(lockres->l_type != OCFS2_LOCK_TYPE_QINFO);

 return (struct ocfs2_mem_dqinfo *)lockres->l_priv;
}
