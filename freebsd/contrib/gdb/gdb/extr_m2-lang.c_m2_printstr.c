
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int LA_EMIT_CHAR (char,struct ui_file*,char) ;
 int QUIT ;
 int fprintf_filtered (struct ui_file*,char*,unsigned int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 struct ui_file* gdb_stdout ;
 scalar_t__ inspect_it ;
 int m2_printchar (char,struct ui_file*) ;
 unsigned int print_max ;
 unsigned int repeat_count_threshold ;

__attribute__((used)) static void
m2_printstr (struct ui_file *stream, char *string, unsigned int length,
      int width, int force_ellipses)
{
  unsigned int i;
  unsigned int things_printed = 0;
  int in_quotes = 0;
  int need_comma = 0;

  if (length == 0)
    {
      fputs_filtered ("\"\"", gdb_stdout);
      return;
    }

  for (i = 0; i < length && things_printed < print_max; ++i)
    {


      unsigned int rep1;

      unsigned int reps;

      QUIT;

      if (need_comma)
 {
   fputs_filtered (", ", stream);
   need_comma = 0;
 }

      rep1 = i + 1;
      reps = 1;
      while (rep1 < length && string[rep1] == string[i])
 {
   ++rep1;
   ++reps;
 }

      if (reps > repeat_count_threshold)
 {
   if (in_quotes)
     {
       if (inspect_it)
  fputs_filtered ("\\\", ", stream);
       else
  fputs_filtered ("\", ", stream);
       in_quotes = 0;
     }
   m2_printchar (string[i], stream);
   fprintf_filtered (stream, " <repeats %u times>", reps);
   i = rep1 - 1;
   things_printed += repeat_count_threshold;
   need_comma = 1;
 }
      else
 {
   if (!in_quotes)
     {
       if (inspect_it)
  fputs_filtered ("\\\"", stream);
       else
  fputs_filtered ("\"", stream);
       in_quotes = 1;
     }
   LA_EMIT_CHAR (string[i], stream, '"');
   ++things_printed;
 }
    }


  if (in_quotes)
    {
      if (inspect_it)
 fputs_filtered ("\\\"", stream);
      else
 fputs_filtered ("\"", stream);
    }

  if (force_ellipses || i < length)
    fputs_filtered ("...", stream);
}
