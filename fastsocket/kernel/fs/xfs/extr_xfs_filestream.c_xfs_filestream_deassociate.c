
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_mru_cache_t ;
struct TYPE_5__ {int i_ino; TYPE_1__* i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_4__ {int * m_filestream; } ;


 int xfs_mru_cache_delete (int *,int ) ;

void
xfs_filestream_deassociate(
 xfs_inode_t *ip)
{
 xfs_mru_cache_t *cache = ip->i_mount->m_filestream;

 xfs_mru_cache_delete(cache, ip->i_ino);
}
