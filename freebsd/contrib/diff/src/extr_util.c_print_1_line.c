
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int fprintf (int *,char const*,char const*) ;
 scalar_t__ initial_tab ;
 int * outfile ;
 int output_1_line (char const*,char const*,char const*,char const*) ;

void
print_1_line (char const *line_flag, char const *const *line)
{
  char const *base = line[0], *limit = line[1];
  FILE *out = outfile;
  char const *flag_format = 0;





  if (line_flag && *line_flag)
    {
      flag_format = initial_tab ? "%s\t" : "%s ";
      fprintf (out, flag_format, line_flag);
    }

  output_1_line (base, limit, flag_format, line_flag);

  if ((!line_flag || line_flag[0]) && limit[-1] != '\n')
    fprintf (out, "\n\\ %s\n", _("No newline at end of file"));
}
