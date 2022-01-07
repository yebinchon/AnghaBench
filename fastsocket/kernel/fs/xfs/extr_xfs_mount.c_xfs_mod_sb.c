
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
typedef int xfs_sb_t ;
typedef long long xfs_sb_field_t ;
struct TYPE_9__ {int m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int xfs_buf_t ;
typedef int __uint64_t ;
typedef long long __int64_t ;
struct TYPE_10__ {int offset; } ;


 int ASSERT (long long) ;
 int XFS_BUF_TO_SBP (int *) ;
 long long XFS_SB_MOD_BITS ;
 scalar_t__ xfs_highbit64 (int ) ;
 scalar_t__ xfs_lowbit64 (int ) ;
 TYPE_6__* xfs_sb_info ;
 int xfs_sb_to_disk (int ,int *,long long) ;
 int * xfs_trans_getsb (TYPE_1__*,TYPE_2__*,int ) ;
 int xfs_trans_log_buf (TYPE_1__*,int *,int,int) ;

void
xfs_mod_sb(xfs_trans_t *tp, __int64_t fields)
{
 xfs_buf_t *bp;
 int first;
 int last;
 xfs_mount_t *mp;
 xfs_sb_field_t f;

 ASSERT(fields);
 if (!fields)
  return;
 mp = tp->t_mountp;
 bp = xfs_trans_getsb(tp, mp, 0);
 first = sizeof(xfs_sb_t);
 last = 0;



 xfs_sb_to_disk(XFS_BUF_TO_SBP(bp), &mp->m_sb, fields);


 f = (xfs_sb_field_t)xfs_highbit64((__uint64_t)fields);
 ASSERT((1LL << f) & XFS_SB_MOD_BITS);
 last = xfs_sb_info[f + 1].offset - 1;

 f = (xfs_sb_field_t)xfs_lowbit64((__uint64_t)fields);
 ASSERT((1LL << f) & XFS_SB_MOD_BITS);
 first = xfs_sb_info[f].offset;

 xfs_trans_log_buf(tp, bp, first, last);
}
