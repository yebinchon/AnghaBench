
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {int qf_flags; int qf_type; } ;
struct TYPE_4__ {struct xfs_mount* li_mountp; } ;
struct xfs_qoff_logitem {struct xfs_qoff_logitem* qql_start_lip; TYPE_1__ qql_format; TYPE_2__ qql_item; } ;
struct xfs_mount {int dummy; } ;


 int KM_SLEEP ;
 int XFS_LI_QUOTAOFF ;
 struct xfs_qoff_logitem* kmem_zalloc (int,int ) ;
 int xfs_log_item_init (struct xfs_mount*,TYPE_2__*,int ,int *) ;
 int xfs_qm_qoff_logitem_ops ;
 int xfs_qm_qoffend_logitem_ops ;

struct xfs_qoff_logitem *
xfs_qm_qoff_logitem_init(
 struct xfs_mount *mp,
 struct xfs_qoff_logitem *start,
 uint flags)
{
 struct xfs_qoff_logitem *qf;

 qf = kmem_zalloc(sizeof(struct xfs_qoff_logitem), KM_SLEEP);

 xfs_log_item_init(mp, &qf->qql_item, XFS_LI_QUOTAOFF, start ?
   &xfs_qm_qoffend_logitem_ops : &xfs_qm_qoff_logitem_ops);
 qf->qql_item.li_mountp = mp;
 qf->qql_format.qf_type = XFS_LI_QUOTAOFF;
 qf->qql_format.qf_flags = flags;
 qf->qql_start_lip = start;
 return qf;
}
