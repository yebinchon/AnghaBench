
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int expand_tabs ;
 int isprint (unsigned char) ;
 int * outfile ;
 int putc (unsigned char,int *) ;
 int tab_from_to (int ,size_t) ;
 size_t tabsize ;

__attribute__((used)) static size_t
print_half_line (char const *const *line, size_t indent, size_t out_bound)
{
  FILE *out = outfile;
  register size_t in_position = 0;
  register size_t out_position = 0;
  register char const *text_pointer = line[0];
  register char const *text_limit = line[1];

  while (text_pointer < text_limit)
    {
      register unsigned char c = *text_pointer++;

      switch (c)
 {
 case '\t':
   {
     size_t spaces = tabsize - in_position % tabsize;
     if (in_position == out_position)
       {
  size_t tabstop = out_position + spaces;
  if (expand_tabs)
    {
      if (out_bound < tabstop)
        tabstop = out_bound;
      for (; out_position < tabstop; out_position++)
        putc (' ', out);
    }
  else
    if (tabstop < out_bound)
      {
        out_position = tabstop;
        putc (c, out);
      }
       }
     in_position += spaces;
   }
   break;

 case '\r':
   {
     putc (c, out);
     tab_from_to (0, indent);
     in_position = out_position = 0;
   }
   break;

 case '\b':
   if (in_position != 0 && --in_position < out_bound)
     {
       if (out_position <= in_position)

  for (; out_position < in_position; out_position++)
    putc (' ', out);
       else
  {
    out_position = in_position;
    putc (c, out);
  }
     }
   break;

 case '\f':
 case '\v':
 control_char:
   if (in_position < out_bound)
     putc (c, out);
   break;

 default:
   if (! isprint (c))
     goto control_char;

 case ' ':
   if (in_position++ < out_bound)
     {
       out_position = in_position;
       putc (c, out);
     }
   break;

 case '\n':
   return out_position;
 }
    }

  return out_position;
}
