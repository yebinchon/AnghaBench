
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntfs ;
typedef int am_opts ;
typedef int am_ops ;


 int * alloc_mntfs (int *,int *,char*,char*,char*,char*,char*) ;
 int * locate_mntfs (int *,int *,char*,char*,char*,char*,char*) ;

mntfs *
find_mntfs(am_ops *ops, am_opts *mo, char *mp, char *info, char *auto_opts, char *mopts, char *remopts)
{
  mntfs *mf = locate_mntfs(ops, mo, mp, info, auto_opts, mopts, remopts);
  if (mf)
    return mf;

  return alloc_mntfs(ops, mo, mp, info, auto_opts, mopts, remopts);
}
