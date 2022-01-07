
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_db_t ;
struct xfs_mount {int dummy; } ;


 int XFS_DIR2_MAX_FREE_BESTS (struct xfs_mount*) ;

__attribute__((used)) static inline int
xfs_dir2_db_to_fdindex(struct xfs_mount *mp, xfs_dir2_db_t db)
{
 return ((db) % XFS_DIR2_MAX_FREE_BESTS(mp));
}
