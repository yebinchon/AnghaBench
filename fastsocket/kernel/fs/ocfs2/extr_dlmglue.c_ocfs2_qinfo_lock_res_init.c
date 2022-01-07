
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dqi_sb; int dqi_type; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; } ;
struct ocfs2_lock_res {int l_name; } ;


 int OCFS2_LOCK_TYPE_QINFO ;
 int OCFS2_SB (int ) ;
 int ocfs2_build_lock_name (int ,int ,int ,int ) ;
 int ocfs2_lock_res_init_common (int ,struct ocfs2_lock_res*,int ,int *,struct ocfs2_mem_dqinfo*) ;
 int ocfs2_lock_res_init_once (struct ocfs2_lock_res*) ;
 int ocfs2_qinfo_lops ;

void ocfs2_qinfo_lock_res_init(struct ocfs2_lock_res *lockres,
          struct ocfs2_mem_dqinfo *info)
{
 ocfs2_lock_res_init_once(lockres);
 ocfs2_build_lock_name(OCFS2_LOCK_TYPE_QINFO, info->dqi_gi.dqi_type,
         0, lockres->l_name);
 ocfs2_lock_res_init_common(OCFS2_SB(info->dqi_gi.dqi_sb), lockres,
       OCFS2_LOCK_TYPE_QINFO, &ocfs2_qinfo_lops,
       info);
}
