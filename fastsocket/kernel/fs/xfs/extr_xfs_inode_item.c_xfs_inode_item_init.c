
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_mount {int dummy; } ;
struct TYPE_3__ {int ilf_boffset; int ilf_len; int ilf_blkno; int ilf_ino; int ilf_type; } ;
struct xfs_inode_log_item {TYPE_1__ ili_format; int ili_item; struct xfs_inode* ili_inode; } ;
struct TYPE_4__ {int im_boffset; int im_len; int im_blkno; } ;
struct xfs_inode {TYPE_2__ i_imap; int i_ino; struct xfs_inode_log_item* i_itemp; } ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int XFS_LI_INODE ;
 struct xfs_inode_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_ili_zone ;
 int xfs_inode_item_ops ;
 int xfs_log_item_init (struct xfs_mount*,int *,int ,int *) ;

void
xfs_inode_item_init(
 struct xfs_inode *ip,
 struct xfs_mount *mp)
{
 struct xfs_inode_log_item *iip;

 ASSERT(ip->i_itemp == ((void*)0));
 iip = ip->i_itemp = kmem_zone_zalloc(xfs_ili_zone, KM_SLEEP);

 iip->ili_inode = ip;
 xfs_log_item_init(mp, &iip->ili_item, XFS_LI_INODE,
      &xfs_inode_item_ops);
 iip->ili_format.ilf_type = XFS_LI_INODE;
 iip->ili_format.ilf_ino = ip->i_ino;
 iip->ili_format.ilf_blkno = ip->i_imap.im_blkno;
 iip->ili_format.ilf_len = ip->i_imap.im_len;
 iip->ili_format.ilf_boffset = ip->i_imap.im_boffset;
}
