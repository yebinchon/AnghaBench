
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_option_table {char* option; char* help; } ;
struct arm_long_option_table {char* option; char* help; } ;
typedef int FILE ;


 char* _ (char*) ;
 struct arm_long_option_table* arm_long_opts ;
 struct arm_option_table* arm_opts ;
 int fprintf (int *,char*,...) ;

void
md_show_usage (FILE * fp)
{
  struct arm_option_table *opt;
  struct arm_long_option_table *lopt;

  fprintf (fp, _(" ARM-specific assembler options:\n"));

  for (opt = arm_opts; opt->option != ((void*)0); opt++)
    if (opt->help != ((void*)0))
      fprintf (fp, "  -%-23s%s\n", opt->option, _(opt->help));

  for (lopt = arm_long_opts; lopt->option != ((void*)0); lopt++)
    if (lopt->help != ((void*)0))
      fprintf (fp, "  -%s%s\n", lopt->option, _(lopt->help));
}
