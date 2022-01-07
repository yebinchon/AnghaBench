
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kset_unregister (int *) ;
 int mlog_kset ;

void mlog_sys_shutdown(void)
{
 kset_unregister(&mlog_kset);
}
