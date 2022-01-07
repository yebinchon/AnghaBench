
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int expand_tabs ;
 int * outfile ;
 int putc (char,int *) ;
 size_t tabsize ;

__attribute__((used)) static size_t
tab_from_to (size_t from, size_t to)
{
  FILE *out = outfile;
  size_t tab;
  size_t tab_size = tabsize;

  if (!expand_tabs)
    for (tab = from + tab_size - from % tab_size; tab <= to; tab += tab_size)
      {
 putc ('\t', out);
 from = tab;
      }
  while (from++ < to)
    putc (' ', out);
  return to;
}
