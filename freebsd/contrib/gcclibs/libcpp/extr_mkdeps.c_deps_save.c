
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {size_t ndeps; size_t** depv; } ;
typedef int FILE ;


 int fwrite (size_t*,size_t,int,int *) ;
 size_t strlen (size_t*) ;

int
deps_save (struct deps *deps, FILE *f)
{
  unsigned int i;





  if (fwrite (&deps->ndeps, sizeof (deps->ndeps), 1, f) != 1)
      return -1;

  for (i = 0; i < deps->ndeps; i++)
    {
      size_t num_to_write = strlen (deps->depv[i]);
      if (fwrite (&num_to_write, sizeof (size_t), 1, f) != 1)
          return -1;
      if (fwrite (deps->depv[i], num_to_write, 1, f) != 1)
          return -1;
    }

  return 0;
}
