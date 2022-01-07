
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
struct file_data {int dummy; } ;
typedef long lin ;
typedef int FILE ;


 scalar_t__ ISDIGIT (char) ;
 int fprintf (int *,char*,long) ;
 int free (char*) ;
 long groups_letter_value (struct group const*,char) ;
 int memcpy (char*,char const*,size_t) ;
 int putc (char,int *) ;
 char* scan_char_literal (char const*,char*) ;
 long translate_line_number (struct file_data const*,long) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char const *
do_printf_spec (FILE *out, char const *spec,
  struct file_data const *file, lin n,
  struct group const *groups)
{
  char const *f = spec;
  char c;
  char c1;



  f++;
  while ((c = *f++) == '-' || c == '\'' || c == '0')
    continue;
  while (ISDIGIT (c))
    c = *f++;
  if (c == '.')
    while (ISDIGIT (c = *f++))
      continue;
  c1 = *f++;

  switch (c)
    {
    case 'c':
      if (c1 != '\'')
 return 0;
      else
 {
   char value;
   f = scan_char_literal (f, &value);
   if (!f)
     return 0;
   if (out)
     putc (value, out);
 }
      break;

    case 'd': case 'o': case 'x': case 'X':
      {
 lin value;

 if (file)
   {
     if (c1 != 'n')
       return 0;
     value = translate_line_number (file, n);
   }
 else
   {
     value = groups_letter_value (groups, c1);
     if (value < 0)
       return 0;
   }

 if (out)
   {


     long int long_value = value;
     size_t spec_prefix_len = f - spec - 2;



     char *format = xmalloc (spec_prefix_len + 3);

     char *p = format + spec_prefix_len;
     memcpy (format, spec, spec_prefix_len);
     *p++ = 'l';
     *p++ = c;
     *p = '\0';
     fprintf (out, format, long_value);

     free (format);

   }
      }
      break;

    default:
      return 0;
    }

  return f;
}
