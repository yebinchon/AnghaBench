
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntfs ;


 int amfs_mkcacheref (int *) ;

void
amfs_generic_mounted(mntfs *mf)
{
  amfs_mkcacheref(mf);
}
