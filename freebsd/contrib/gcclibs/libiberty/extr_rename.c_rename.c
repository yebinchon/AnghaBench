
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 scalar_t__ errno ;
 scalar_t__ link (char const*,char const*) ;
 int unlink (char const*) ;

int
rename (const char *zfrom, const char *zto)
{
  if (link (zfrom, zto) < 0)
    {
      if (errno != EEXIST)
 return -1;
      if (unlink (zto) < 0
   || link (zfrom, zto) < 0)
 return -1;
    }
  return unlink (zfrom);
}
