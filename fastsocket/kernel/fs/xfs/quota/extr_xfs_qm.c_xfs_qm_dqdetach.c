
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i_ino; int * i_gdquot; int * i_udquot; TYPE_1__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
struct TYPE_7__ {scalar_t__ sb_uquotino; scalar_t__ sb_gquotino; } ;
struct TYPE_6__ {TYPE_2__ m_sb; } ;


 int ASSERT (int) ;
 int trace_xfs_dquot_dqdetach (TYPE_3__*) ;
 int xfs_qm_dqrele (int *) ;

void
xfs_qm_dqdetach(
 xfs_inode_t *ip)
{
 if (!(ip->i_udquot || ip->i_gdquot))
  return;

 trace_xfs_dquot_dqdetach(ip);

 ASSERT(ip->i_ino != ip->i_mount->m_sb.sb_uquotino);
 ASSERT(ip->i_ino != ip->i_mount->m_sb.sb_gquotino);
 if (ip->i_udquot) {
  xfs_qm_dqrele(ip->i_udquot);
  ip->i_udquot = ((void*)0);
 }
 if (ip->i_gdquot) {
  xfs_qm_dqrele(ip->i_gdquot);
  ip->i_gdquot = ((void*)0);
 }
}
