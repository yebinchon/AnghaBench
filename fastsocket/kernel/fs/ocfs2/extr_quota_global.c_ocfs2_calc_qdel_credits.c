
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_3__ {int dqi_qtree_depth; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; } ;
struct TYPE_4__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_QINFO_WRITE_CREDITS ;
 int OCFS2_QUOTA_BLOCK_UPDATE_CREDITS ;
 TYPE_2__* sb_dqinfo (struct super_block*,int) ;

__attribute__((used)) static int ocfs2_calc_qdel_credits(struct super_block *sb, int type)
{
 struct ocfs2_mem_dqinfo *oinfo = sb_dqinfo(sb, type)->dqi_priv;





 return (oinfo->dqi_gi.dqi_qtree_depth + 2) *
        OCFS2_QUOTA_BLOCK_UPDATE_CREDITS +
        OCFS2_QINFO_WRITE_CREDITS +
        OCFS2_INODE_UPDATE_CREDITS;
}
