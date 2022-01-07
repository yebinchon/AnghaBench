
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntent_t ;


 int hasmntvalerr (int *,char*,int*) ;

int
hasmntval(mntent_t *mnt, char *opt)
{
  int err, val = 0;

  err = hasmntvalerr(mnt, opt, &val);
  if (err)
    return 0;

  return val;
}
