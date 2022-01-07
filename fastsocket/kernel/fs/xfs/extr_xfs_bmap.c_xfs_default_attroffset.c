
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_2__ {int sb_inodesize; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;


 int ASSERT (int) ;
 int MINABTPTRS ;
 scalar_t__ XFS_BMDR_SPACE_CALC (int) ;
 scalar_t__ XFS_LITINO (struct xfs_mount*) ;

uint
xfs_default_attroffset(
 struct xfs_inode *ip)
{
 struct xfs_mount *mp = ip->i_mount;
 uint offset;

 if (mp->m_sb.sb_inodesize == 256) {
  offset = XFS_LITINO(mp) -
    XFS_BMDR_SPACE_CALC(MINABTPTRS);
 } else {
  offset = XFS_BMDR_SPACE_CALC(6 * MINABTPTRS);
 }

 ASSERT(offset < XFS_LITINO(mp));
 return offset;
}
