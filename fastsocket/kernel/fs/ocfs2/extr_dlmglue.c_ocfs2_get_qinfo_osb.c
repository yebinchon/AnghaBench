
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int dqi_sb; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; } ;
struct ocfs2_lock_res {struct ocfs2_mem_dqinfo* l_priv; } ;


 struct ocfs2_super* OCFS2_SB (int ) ;

__attribute__((used)) static struct ocfs2_super *ocfs2_get_qinfo_osb(struct ocfs2_lock_res *lockres)
{
 struct ocfs2_mem_dqinfo *info = lockres->l_priv;

 return OCFS2_SB(info->dqi_gi.dqi_sb);
}
