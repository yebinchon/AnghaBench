
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int t_flags; } ;
typedef TYPE_4__ xfs_trans_t ;
struct TYPE_13__ {TYPE_3__* i_itemp; TYPE_4__* i_transp; } ;
typedef TYPE_5__ xfs_inode_t ;
typedef int uint ;
struct TYPE_9__ {TYPE_2__* li_desc; } ;
struct TYPE_11__ {int ili_fields; int ili_last_fields; TYPE_1__ ili_item; } ;
struct TYPE_10__ {int lid_flags; } ;


 int ASSERT (int) ;
 int XFS_ILOCK_EXCL ;
 int XFS_LID_DIRTY ;
 int XFS_TRANS_DIRTY ;
 int xfs_isilocked (TYPE_5__*,int ) ;

void
xfs_trans_log_inode(
 xfs_trans_t *tp,
 xfs_inode_t *ip,
 uint flags)
{
 ASSERT(ip->i_transp == tp);
 ASSERT(ip->i_itemp != ((void*)0));
 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));

 tp->t_flags |= XFS_TRANS_DIRTY;
 ip->i_itemp->ili_item.li_desc->lid_flags |= XFS_LID_DIRTY;
 flags |= ip->i_itemp->ili_last_fields;
 ip->i_itemp->ili_fields |= flags;
}
