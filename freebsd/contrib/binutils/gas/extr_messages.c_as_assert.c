
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* _ (char*) ;
 int as_show_where () ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int xexit (int ) ;

void
as_assert (const char *file, int line, const char *fn)
{
  as_show_where ();
  fprintf (stderr, _("Internal error!\n"));
  if (fn)
    fprintf (stderr, _("Assertion failure in %s at %s line %d.\n"),
      fn, file, line);
  else
    fprintf (stderr, _("Assertion failure at %s line %d.\n"), file, line);
  fprintf (stderr, _("Please report this bug.\n"));
  xexit (EXIT_FAILURE);
}
