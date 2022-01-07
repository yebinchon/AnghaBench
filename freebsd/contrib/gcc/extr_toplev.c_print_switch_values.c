
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; char* opt_text; } ;
typedef int FILE ;


 int CL_REPORT ;
 char* _ (char*) ;
 TYPE_1__* cl_options ;
 size_t cl_options_count ;
 int fprintf (int *,char*,char const*) ;
 scalar_t__ option_enabled (size_t) ;
 int print_single_switch (int *,int,int,char const*,char const*,char const*,char const*,char*) ;
 int randomize () ;
 char** save_argv ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
print_switch_values (FILE *file, int pos, int max,
       const char *indent, const char *sep, const char *term)
{
  size_t j;
  const char **p;



  randomize ();


  pos = print_single_switch (file, pos, max, indent, *indent ? " " : "", term,
        _("options passed: "), "");

  for (p = &save_argv[1]; *p != ((void*)0); p++)
    if (**p == '-')
      {

 if (strcmp (*p, "-o") == 0)
   {
     if (p[1] != ((void*)0))
       p++;
     continue;
   }
 if (strcmp (*p, "-quiet") == 0)
   continue;
 if (strcmp (*p, "-version") == 0)
   continue;
 if ((*p)[1] == 'd')
   continue;

 pos = print_single_switch (file, pos, max, indent, sep, term, *p, "");
      }
  if (pos > 0)
    fprintf (file, "%s", term);





  pos = print_single_switch (file, 0, max, indent, *indent ? " " : "", term,
        _("options enabled: "), "");

  for (j = 0; j < cl_options_count; j++)
    if ((cl_options[j].flags & CL_REPORT)
 && option_enabled (j) > 0)
      pos = print_single_switch (file, pos, max, indent, sep, term,
     "", cl_options[j].opt_text);

  fprintf (file, "%s", term);
}
