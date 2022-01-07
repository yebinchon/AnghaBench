
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CFM_NORMALIZE_SLASHES ;
 TYPE_1__ gopt ;
 char* strchr (char*,char) ;

void
normalize_slash(char *p)
{
  char *f, *f0;

  if (!(gopt.flags & CFM_NORMALIZE_SLASHES))
    return;

  f0 = f = strchr(p, '/');
  if (f) {
    char *t = f;
    do {

      if (f == f0 && f[0] == '/' && f[1] == '/') {

 *t++ = *f++;
 *t++ = *f++;
      } else {

 *t++ = *f++;
      }



      while (*f == '/')
 f++;



      while (*f && *f != '/') {

 if (f[0] == '\\' && f[1] == '/')
   f++;
 *t++ = *f++;
      }



    } while (*f);
    *t = '\0';
  }
}
