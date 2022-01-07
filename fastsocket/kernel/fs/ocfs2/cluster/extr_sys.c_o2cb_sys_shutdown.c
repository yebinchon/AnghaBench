
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kset_unregister (int ) ;
 int mlog_sys_shutdown () ;
 int o2cb_kset ;
 int sysfs_remove_link (int *,char*) ;

void o2cb_sys_shutdown(void)
{
 mlog_sys_shutdown();
 sysfs_remove_link(((void*)0), "o2cb");
 kset_unregister(o2cb_kset);
}
