
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntfs ;
typedef int am_node ;


 int FALSE ;
 int amfs_nfsx_remount (int *,int *,int ) ;

__attribute__((used)) static int
amfs_nfsx_mount(am_node *am, mntfs *mf)
{
  return amfs_nfsx_remount(am, mf, FALSE);
}
