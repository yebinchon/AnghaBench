
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_dir2_off_t ;
typedef int xfs_dir2_db_t ;
struct TYPE_2__ {int sb_blocklog; int sb_dirblklog; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;



__attribute__((used)) static inline xfs_dir2_db_t
xfs_dir2_byte_to_db(struct xfs_mount *mp, xfs_dir2_off_t by)
{
 return (xfs_dir2_db_t)((by) >> ((mp)->m_sb.sb_blocklog + (mp)->m_sb.sb_dirblklog));

}
