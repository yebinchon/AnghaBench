
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 scalar_t__ PRINT_LITERAL_FORM (int) ;
 int QUIT ;
 int fprintf_filtered (struct ui_file*,char*,unsigned int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ inspect_it ;
 int pascal_one_char (int,struct ui_file*,int*) ;
 int pascal_printchar (char,struct ui_file*) ;
 unsigned int print_max ;
 unsigned int repeat_count_threshold ;

void
pascal_printstr (struct ui_file *stream, char *string, unsigned int length,
   int width, int force_ellipses)
{
  unsigned int i;
  unsigned int things_printed = 0;
  int in_quotes = 0;
  int need_comma = 0;




  if ((!force_ellipses) && length > 0 && string[length - 1] == '\0')
    length--;

  if (length == 0)
    {
      fputs_filtered ("''", stream);
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
  fputs_filtered ("\\', ", stream);
       else
  fputs_filtered ("', ", stream);
       in_quotes = 0;
     }
   pascal_printchar (string[i], stream);
   fprintf_filtered (stream, " <repeats %u times>", reps);
   i = rep1 - 1;
   things_printed += repeat_count_threshold;
   need_comma = 1;
 }
      else
 {
   int c = string[i];
   if ((!in_quotes) && (PRINT_LITERAL_FORM (c)))
     {
       if (inspect_it)
  fputs_filtered ("\\'", stream);
       else
  fputs_filtered ("'", stream);
       in_quotes = 1;
     }
   pascal_one_char (c, stream, &in_quotes);
   ++things_printed;
 }
    }


  if (in_quotes)
    {
      if (inspect_it)
 fputs_filtered ("\\'", stream);
      else
 fputs_filtered ("'", stream);
    }

  if (force_ellipses || i < length)
    fputs_filtered ("...", stream);
}
