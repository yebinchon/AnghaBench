
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntent_t ;


 char* amu_hasmntopt (int *,char*) ;
 char* hasmnteq (int *,char*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;
 char* xmalloc (int) ;
 char* xstrdup (char*) ;

char *
hasmntstr(mntent_t *mnt, char *opt)
{
  char *str = amu_hasmntopt(mnt, opt);

  if (str) {

    char *eq = hasmnteq(mnt, opt);

    if (eq) {

      char *endptr = strchr(eq, ',');


      if (!endptr)
 return xstrdup(eq);
      else {

 int len = endptr - eq;
 char *buf = xmalloc(len + 1);
 strncpy(buf, eq, len);
 buf[len] = '\0';
 return buf;
      }
    }
  }
  return ((void*)0);
}
