
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_mount_t ;


 int INT_MAX ;
 int xfs_reclaim_inodes_ag (int *,int,int*) ;

int
xfs_reclaim_inodes(
 xfs_mount_t *mp,
 int mode)
{
 int nr_to_scan = INT_MAX;

 return xfs_reclaim_inodes_ag(mp, mode, &nr_to_scan);
}
