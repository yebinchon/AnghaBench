
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gfs2_kset ;
 int kset_unregister (int ) ;

void gfs2_sys_uninit(void)
{
 kset_unregister(gfs2_kset);
}
