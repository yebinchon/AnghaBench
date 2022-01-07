
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int einfo (int ,...) ;
 int xexit (int) ;

void
ld_abort (const char *file, int line, const char *fn)
{
  if (fn != ((void*)0))
    einfo (_("%P: internal error: aborting at %s line %d in %s\n"),
    file, line, fn);
  else
    einfo (_("%P: internal error: aborting at %s line %d\n"),
    file, line);
  einfo (_("%P%F: please report this bug\n"));
  xexit (1);
}
