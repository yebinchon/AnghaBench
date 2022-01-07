
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_filestream; } ;
typedef TYPE_1__ xfs_mount_t ;


 int xfs_fstrm_centisecs ;
 int xfs_fstrm_free_func ;
 int xfs_mru_cache_create (int *,unsigned int,unsigned int,int ) ;

int
xfs_filestream_mount(
 xfs_mount_t *mp)
{
 int err;
 unsigned int lifetime, grp_count;
 lifetime = xfs_fstrm_centisecs * 10;
 grp_count = 10;

 err = xfs_mru_cache_create(&mp->m_filestream, lifetime, grp_count,
                      xfs_fstrm_free_func);

 return err;
}
