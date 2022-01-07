
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_4__ {int sb_blocklog; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_5__ {int agno; struct xfs_buf* agbp; } ;
struct TYPE_6__ {TYPE_2__ a; } ;
struct xfs_btree_cur {TYPE_3__ bc_private; int * bc_ops; int bc_blocklog; int bc_btnum; int bc_nlevels; struct xfs_mount* bc_mp; struct xfs_trans* bc_tp; } ;
struct xfs_agi {int agi_level; } ;


 int KM_SLEEP ;
 int XFS_BTNUM_INO ;
 struct xfs_agi* XFS_BUF_TO_AGI (struct xfs_buf*) ;
 int be32_to_cpu (int ) ;
 struct xfs_btree_cur* kmem_zone_zalloc (int ,int ) ;
 int xfs_btree_cur_zone ;
 int xfs_inobt_ops ;

struct xfs_btree_cur *
xfs_inobt_init_cursor(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_buf *agbp,
 xfs_agnumber_t agno)
{
 struct xfs_agi *agi = XFS_BUF_TO_AGI(agbp);
 struct xfs_btree_cur *cur;

 cur = kmem_zone_zalloc(xfs_btree_cur_zone, KM_SLEEP);

 cur->bc_tp = tp;
 cur->bc_mp = mp;
 cur->bc_nlevels = be32_to_cpu(agi->agi_level);
 cur->bc_btnum = XFS_BTNUM_INO;
 cur->bc_blocklog = mp->m_sb.sb_blocklog;

 cur->bc_ops = &xfs_inobt_ops;

 cur->bc_private.a.agbp = agbp;
 cur->bc_private.a.agno = agno;

 return cur;
}
