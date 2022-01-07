
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kset_unregister (int ) ;
 int ocfs2_kset ;

__attribute__((used)) static void ocfs2_sysfs_exit(void)
{
 kset_unregister(ocfs2_kset);
}
