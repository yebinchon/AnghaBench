
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_filestream; } ;
typedef TYPE_1__ xfs_mount_t ;


 int xfs_mru_cache_destroy (int ) ;

void
xfs_filestream_unmount(
 xfs_mount_t *mp)
{
 xfs_mru_cache_destroy(mp->m_filestream);
}
