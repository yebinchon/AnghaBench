
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {unsigned int ntargets; char** targetv; unsigned int ndeps; char** depv; } ;
typedef int FILE ;


 int fputs (char*,int *) ;
 int putc (char,int *) ;
 unsigned int strlen (char*) ;

void
deps_write (const struct deps *d, FILE *fp, unsigned int colmax)
{
  unsigned int size, i, column;

  column = 0;
  if (colmax && colmax < 34)
    colmax = 34;

  for (i = 0; i < d->ntargets; i++)
    {
      size = strlen (d->targetv[i]);
      column += size;
      if (colmax && column > colmax)
 {
   fputs (" \\\n ", fp);
   column = 1 + size;
 }
      if (i)
 {
   putc (' ', fp);
   column++;
 }
      fputs (d->targetv[i], fp);
    }

  putc (':', fp);
  putc (' ', fp);
  column += 2;

  for (i = 0; i < d->ndeps; i++)
    {
      size = strlen (d->depv[i]);
      column += size;
      if (colmax && column > colmax)
 {
   fputs (" \\\n ", fp);
   column = 1 + size;
 }
      if (i)
 {
   putc (' ', fp);
   column++;
 }
      fputs (d->depv[i], fp);
    }
  putc ('\n', fp);
}
