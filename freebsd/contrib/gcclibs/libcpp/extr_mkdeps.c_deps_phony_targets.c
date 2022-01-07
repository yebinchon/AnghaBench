
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {unsigned int ndeps; int * depv; } ;
typedef int FILE ;


 int fputs (int ,int *) ;
 int putc (char,int *) ;

void
deps_phony_targets (const struct deps *d, FILE *fp)
{
  unsigned int i;

  for (i = 1; i < d->ndeps; i++)
    {
      putc ('\n', fp);
      fputs (d->depv[i], fp);
      putc (':', fp);
      putc ('\n', fp);
    }
}
