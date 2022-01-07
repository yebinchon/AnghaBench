
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; int shrink; } ;
struct xfs_mount {TYPE_1__ m_inode_shrink; } ;


 int DEFAULT_SEEKS ;
 int register_shrinker (TYPE_1__*) ;
 int xfs_reclaim_inode_shrink ;

void
xfs_inode_shrinker_register(
 struct xfs_mount *mp)
{
 mp->m_inode_shrink.shrink = xfs_reclaim_inode_shrink;
 mp->m_inode_shrink.seeks = DEFAULT_SEEKS;
 register_shrinker(&mp->m_inode_shrink);
}
