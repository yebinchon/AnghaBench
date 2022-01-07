
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AR_EMUL_USAGE_PRINT_OPTION_HEADER (int *) ;
 char* _ (char*) ;
 int fprintf (int *,char*) ;

void
ar_emul_default_usage (FILE *fp)
{
  AR_EMUL_USAGE_PRINT_OPTION_HEADER (fp);

  fprintf (fp, _("  No emulation specific options\n"));
}
