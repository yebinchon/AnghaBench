
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {size_t from; size_t upto; struct file_data* file; } ;
struct file_data {char** linbuf; } ;
typedef size_t lin ;
typedef int FILE ;


 char* do_printf_spec (int *,char const*,struct file_data const*,size_t,int ) ;
 int expand_tabs ;
 int fwrite (char const* const,int,int,int *) ;
 int output_1_line (char const* const,char const* const,int ,int ) ;
 int putc (char,int *) ;

__attribute__((used)) static void
print_ifdef_lines (register FILE *out, char const *format,
     struct group const *group)
{
  struct file_data const *file = group->file;
  char const * const *linbuf = file->linbuf;
  lin from = group->from, upto = group->upto;

  if (!out)
    return;


  if (!expand_tabs && format[0] == '%')
    {
      if (format[1] == 'l' && format[2] == '\n' && !format[3] && from < upto)
 {
   fwrite (linbuf[from], sizeof (char),
    linbuf[upto] + (linbuf[upto][-1] != '\n') - linbuf[from],
    out);
   return;
 }
      if (format[1] == 'L' && !format[2])
 {
   fwrite (linbuf[from], sizeof (char),
    linbuf[upto] - linbuf[from], out);
   return;
 }
    }

  for (; from < upto; from++)
    {
      register char c;
      register char const *f = format;

      while ((c = *f++) != 0)
 {
   char const *f1 = f;
   if (c == '%')
     switch ((c = *f++))
       {
       case '%':
  break;

       case 'l':
  output_1_line (linbuf[from],
          (linbuf[from + 1]
    - (linbuf[from + 1][-1] == '\n')),
          0, 0);
  continue;

       case 'L':
  output_1_line (linbuf[from], linbuf[from + 1], 0, 0);
  continue;

       default:
  f = do_printf_spec (out, f - 2, file, from, 0);
  if (f)
    continue;
  c = '%';
  f = f1;
  break;
       }

   putc (c, out);
 }
    }
}
