
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct group {int dummy; } ;
typedef int FILE ;


 int ISDIGIT (char const) ;
 size_t NEW ;
 size_t OLD ;
 size_t UNCHANGED ;
 char* do_printf_spec (int *,char const*,int ,int ,struct group const*) ;
 int errno ;
 int groups_letter_value (struct group const*,char const) ;
 int * line_format ;
 int print_ifdef_lines (int *,int ,struct group const*) ;
 int putc (char,int *) ;
 int strtoumax (char const*,char**,int) ;

__attribute__((used)) static char const *
format_group (register FILE *out, char const *format, char endchar,
       struct group const *groups)
{
  register char c;
  register char const *f = format;

  while ((c = *f) != endchar && c != 0)
    {
      char const *f1 = ++f;
      if (c == '%')
 switch ((c = *f++))
   {
   case '%':
     break;

   case '(':

     {
       int i;
       uintmax_t value[2];
       FILE *thenout, *elseout;

       for (i = 0; i < 2; i++)
  {
    if (ISDIGIT (*f))
      {
        char *fend;
        errno = 0;
        value[i] = strtoumax (f, &fend, 10);
        if (errno)
   goto bad_format;
        f = fend;
      }
    else
      {
        value[i] = groups_letter_value (groups, *f);
        if (value[i] == -1)
   goto bad_format;
        f++;
      }
    if (*f++ != "=?"[i])
      goto bad_format;
  }
       if (value[0] == value[1])
  thenout = out, elseout = 0;
       else
  thenout = 0, elseout = out;
       f = format_group (thenout, f, ':', groups);
       if (*f)
  {
    f = format_group (elseout, f + 1, ')', groups);
    if (*f)
      f++;
  }
     }
     continue;

   case '<':

     print_ifdef_lines (out, line_format[OLD], &groups[0]);
     continue;

   case '=':

     print_ifdef_lines (out, line_format[UNCHANGED], &groups[0]);
     continue;

   case '>':

     print_ifdef_lines (out, line_format[NEW], &groups[1]);
     continue;

   default:
     f = do_printf_spec (out, f - 2, 0, 0, groups);
     if (f)
       continue;

   bad_format:
     c = '%';
     f = f1;
     break;
   }

      if (out)
 putc (c, out);
    }

  return f;
}
