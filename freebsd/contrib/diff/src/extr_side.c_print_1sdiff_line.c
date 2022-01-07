
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * outfile ;
 size_t print_half_line (char const* const*,size_t,size_t) ;
 int putc (char,int *) ;
 size_t sdiff_column2_offset ;
 size_t sdiff_half_width ;
 int tab_from_to (size_t,size_t) ;

__attribute__((used)) static void
print_1sdiff_line (char const *const *left, char sep,
     char const *const *right)
{
  FILE *out = outfile;
  size_t hw = sdiff_half_width;
  size_t c2o = sdiff_column2_offset;
  size_t col = 0;
  bool put_newline = 0;

  if (left)
    {
      put_newline |= left[1][-1] == '\n';
      col = print_half_line (left, 0, hw);
    }

  if (sep != ' ')
    {
      col = tab_from_to (col, (hw + c2o - 1) / 2) + 1;
      if (sep == '|' && put_newline != (right[1][-1] == '\n'))
 sep = put_newline ? '/' : '\\';
      putc (sep, out);
    }

  if (right)
    {
      put_newline |= right[1][-1] == '\n';
      if (**right != '\n')
 {
   col = tab_from_to (col, c2o);
   print_half_line (right, col, hw);
 }
    }

  if (put_newline)
    putc ('\n', out);
}
