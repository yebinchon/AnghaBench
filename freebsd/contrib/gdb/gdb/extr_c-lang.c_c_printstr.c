
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int LA_EMIT_CHAR (unsigned long,struct ui_file*,char) ;
 int LA_PRINT_CHAR (unsigned long,struct ui_file*) ;
 int QUIT ;
 unsigned long extract_unsigned_integer (char*,int) ;
 int fprintf_filtered (struct ui_file*,char*,unsigned int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ inspect_it ;
 unsigned int print_max ;
 unsigned int repeat_count_threshold ;

void
c_printstr (struct ui_file *stream, char *string, unsigned int length,
     int width, int force_ellipses)
{
  unsigned int i;
  unsigned int things_printed = 0;
  int in_quotes = 0;
  int need_comma = 0;




  if (!force_ellipses
      && length > 0
      && (extract_unsigned_integer (string + (length - 1) * width, width)
          == '\0'))
    length--;

  if (length == 0)
    {
      fputs_filtered ("\"\"", stream);
      return;
    }

  for (i = 0; i < length && things_printed < print_max; ++i)
    {


      unsigned int rep1;

      unsigned int reps;
      unsigned long current_char;

      QUIT;

      if (need_comma)
 {
   fputs_filtered (", ", stream);
   need_comma = 0;
 }

      current_char = extract_unsigned_integer (string + i * width, width);

      rep1 = i + 1;
      reps = 1;
      while (rep1 < length
      && extract_unsigned_integer (string + rep1 * width, width)
      == current_char)
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
   LA_PRINT_CHAR (current_char, stream);
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
   LA_EMIT_CHAR (current_char, stream, '"');
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
