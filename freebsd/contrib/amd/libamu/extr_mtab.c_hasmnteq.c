
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntent_t ;


 char* amu_hasmntopt (int *,char*) ;
 int strlen (char*) ;

char *
hasmnteq(mntent_t *mnt, char *opt)
{
  if (mnt && opt) {
    if ( *opt ) {
      char *str = amu_hasmntopt(mnt, opt);
      if ( str ) {
 char *eq = str + strlen(opt);
 if (*eq == '=')
   return ++eq;
      }
    }
  }
  return ((void*)0);
}
