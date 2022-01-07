
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* emulation_name; int (* list_options ) (int *) ;} ;
typedef TYPE_1__ ld_emulation_xfer_type ;
typedef int FILE ;


 char* _ (char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_1__** ld_emulations ;
 int stub1 (int *) ;

void
ldemul_list_emulation_options (FILE *f)
{
  ld_emulation_xfer_type **eptr;
  int options_found = 0;

  for (eptr = ld_emulations; *eptr; eptr++)
    {
      ld_emulation_xfer_type *emul = *eptr;

      if (emul->list_options)
 {
   fprintf (f, "%s: \n", emul->emulation_name);

   emul->list_options (f);

   options_found = 1;
 }
    }

  if (! options_found)
    fprintf (f, _("  no emulation specific options.\n"));
}
