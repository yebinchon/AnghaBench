
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_inode_shrink; } ;


 int unregister_shrinker (int *) ;

void
xfs_inode_shrinker_unregister(
 struct xfs_mount *mp)
{
 unregister_shrinker(&mp->m_inode_shrink);
}
