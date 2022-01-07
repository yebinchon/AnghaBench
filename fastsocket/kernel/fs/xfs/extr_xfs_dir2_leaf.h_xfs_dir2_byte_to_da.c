
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_off_t ;
typedef int xfs_dablk_t ;
struct xfs_mount {int dummy; } ;


 int xfs_dir2_byte_to_db (struct xfs_mount*,int ) ;
 int xfs_dir2_db_to_da (struct xfs_mount*,int ) ;

__attribute__((used)) static inline xfs_dablk_t
xfs_dir2_byte_to_da(struct xfs_mount *mp, xfs_dir2_off_t by)
{
 return xfs_dir2_db_to_da(mp, xfs_dir2_byte_to_db(mp, by));
}
