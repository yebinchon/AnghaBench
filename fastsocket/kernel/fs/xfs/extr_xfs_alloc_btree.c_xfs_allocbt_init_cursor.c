
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t xfs_btnum_t ;
typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_4__ {int sb_blocklog; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_5__ {int agno; struct xfs_buf* agbp; } ;
struct TYPE_6__ {TYPE_2__ a; } ;
struct xfs_btree_cur {size_t bc_btnum; TYPE_3__ bc_private; int bc_flags; int * bc_ops; int bc_blocklog; int bc_nlevels; struct xfs_mount* bc_mp; struct xfs_trans* bc_tp; } ;
struct xfs_agf {int * agf_levels; } ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 size_t XFS_BTNUM_BNO ;
 size_t XFS_BTNUM_CNT ;
 int XFS_BTREE_LASTREC_UPDATE ;
 struct xfs_agf* XFS_BUF_TO_AGF (struct xfs_buf*) ;
 int be32_to_cpu (int ) ;
 struct xfs_btree_cur* kmem_zone_zalloc (int ,int ) ;
 int xfs_allocbt_ops ;
 int xfs_btree_cur_zone ;

struct xfs_btree_cur *
xfs_allocbt_init_cursor(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_buf *agbp,
 xfs_agnumber_t agno,
 xfs_btnum_t btnum)
{
 struct xfs_agf *agf = XFS_BUF_TO_AGF(agbp);
 struct xfs_btree_cur *cur;

 ASSERT(btnum == XFS_BTNUM_BNO || btnum == XFS_BTNUM_CNT);

 cur = kmem_zone_zalloc(xfs_btree_cur_zone, KM_SLEEP);

 cur->bc_tp = tp;
 cur->bc_mp = mp;
 cur->bc_nlevels = be32_to_cpu(agf->agf_levels[btnum]);
 cur->bc_btnum = btnum;
 cur->bc_blocklog = mp->m_sb.sb_blocklog;

 cur->bc_ops = &xfs_allocbt_ops;
 if (btnum == XFS_BTNUM_CNT)
  cur->bc_flags = XFS_BTREE_LASTREC_UPDATE;

 cur->bc_private.a.agbp = agbp;
 cur->bc_private.a.agno = agno;

 return cur;
}
