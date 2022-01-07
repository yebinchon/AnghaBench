
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRDIFF_MAX ;
 char const** diffargv ;
 int xalloc_die () ;
 char** xrealloc (char const**,size_t) ;

__attribute__((used)) static void
diffarg (char const *a)
{
  static size_t diffargs, diffarglim;

  if (diffargs == diffarglim)
    {
      if (! diffarglim)
 diffarglim = 16;
      else if (PTRDIFF_MAX / (2 * sizeof *diffargv) <= diffarglim)
 xalloc_die ();
      else
 diffarglim *= 2;
      diffargv = xrealloc (diffargv, diffarglim * sizeof *diffargv);
    }
  diffargv[diffargs++] = a;
}
