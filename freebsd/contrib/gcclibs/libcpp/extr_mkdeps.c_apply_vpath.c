
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {unsigned int nvpaths; int* vpathlv; int * vpathv; } ;


 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 int strncmp (int ,char const*,int) ;

__attribute__((used)) static const char *
apply_vpath (struct deps *d, const char *t)
{
  if (d->vpathv)
    {
      unsigned int i;
      for (i = 0; i < d->nvpaths; i++)
 {
   if (!strncmp (d->vpathv[i], t, d->vpathlv[i]))
     {
       const char *p = t + d->vpathlv[i];
       if (!IS_DIR_SEPARATOR (*p))
  goto not_this_one;



       if (p[1] == '.' && p[2] == '.' && IS_DIR_SEPARATOR (p[3]))
  goto not_this_one;


       t = t + d->vpathlv[i] + 1;
       break;
     }
 not_this_one:;
 }
    }


  while (t[0] == '.' && IS_DIR_SEPARATOR (t[1]))
    {
      t += 2;


      while (IS_DIR_SEPARATOR (t[0]))
 ++t;
    }

  return t;
}
