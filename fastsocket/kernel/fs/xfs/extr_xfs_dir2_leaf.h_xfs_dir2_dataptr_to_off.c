
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_dataptr_t ;
typedef int xfs_dir2_data_aoff_t ;
struct xfs_mount {int dummy; } ;


 int xfs_dir2_byte_to_off (struct xfs_mount*,int ) ;
 int xfs_dir2_dataptr_to_byte (struct xfs_mount*,int ) ;

__attribute__((used)) static inline xfs_dir2_data_aoff_t
xfs_dir2_dataptr_to_off(struct xfs_mount *mp, xfs_dir2_dataptr_t dp)
{
 return xfs_dir2_byte_to_off(mp, xfs_dir2_dataptr_to_byte(mp, dp));
}
