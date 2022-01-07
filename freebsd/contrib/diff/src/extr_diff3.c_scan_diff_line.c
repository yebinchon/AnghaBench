
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ edscript ;
 int fatal (char*) ;
 int fprintf (int ,char*,char*) ;
 char* program_name ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static char *
scan_diff_line (char *scan_ptr, char **set_start, size_t *set_length,
  char *limit, char leadingchar)
{
  char *line_ptr;

  if (!(scan_ptr[0] == leadingchar
 && scan_ptr[1] == ' '))
    fatal ("invalid diff format; incorrect leading line chars");

  *set_start = line_ptr = scan_ptr + 2;
  while (*line_ptr++ != '\n')
    continue;






  *set_length = line_ptr - *set_start;
  if (line_ptr < limit && *line_ptr == '\\')
    {
      if (edscript)
 fprintf (stderr, "%s:", program_name);
      else
 --*set_length;
      line_ptr++;
      do
 {
   if (edscript)
     putc (*line_ptr, stderr);
 }
      while (*line_ptr++ != '\n');
    }

  return line_ptr;
}
