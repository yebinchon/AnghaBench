
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int QUIT ;
 int ada_emit_char (scalar_t__,struct ui_file*,char,int) ;
 scalar_t__ char_at (char*,unsigned int,int) ;
 int fprintf_filtered (struct ui_file*,char*,unsigned int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ inspect_it ;
 unsigned int print_max ;
 unsigned int repeat_count_threshold ;

__attribute__((used)) static void
printstr (struct ui_file *stream, char *string, unsigned int length,
   int force_ellipses, int type_len)
{
  unsigned int i;
  unsigned int things_printed = 0;
  int in_quotes = 0;
  int need_comma = 0;

  if (length == 0)
    {
      fputs_filtered ("\"\"", stream);
      return;
    }

  for (i = 0; i < length && things_printed < print_max; i += 1)
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
      while (rep1 < length &&
      char_at (string, rep1, type_len) == char_at (string, i,
         type_len))
 {
   rep1 += 1;
   reps += 1;
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
   fputs_filtered ("'", stream);
   ada_emit_char (char_at (string, i, type_len), stream, '\'',
    type_len);
   fputs_filtered ("'", stream);
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
   ada_emit_char (char_at (string, i, type_len), stream, '"',
    type_len);
   things_printed += 1;
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
