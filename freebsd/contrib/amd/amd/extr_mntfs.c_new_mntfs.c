
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntfs ;
typedef int am_opts ;


 int * alloc_mntfs (int *,int *,char*,char*,char*,char*,char*) ;
 int amfs_error_ops ;

mntfs *
new_mntfs(void)
{
  return alloc_mntfs(&amfs_error_ops, (am_opts *) ((void*)0), "//nil//", ".", "", "", "");
}
