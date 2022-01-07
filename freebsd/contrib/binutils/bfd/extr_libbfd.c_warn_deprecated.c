
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;

void
warn_deprecated (const char *what,
   const char *file,
   int line,
   const char *func)
{

  static size_t mask = 0;

  if (~(size_t) func & ~mask)
    {


      if (func)
 fprintf (stderr, _("Deprecated %s called at %s line %d in %s\n"),
   what, file, line, func);
      else
 fprintf (stderr, _("Deprecated %s called\n"), what);
      mask |= ~(size_t) func;
    }
}
