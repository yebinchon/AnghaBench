
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FIRST_PSEUDO_REGISTER ;
 int fprintf (int *,char*,int,int) ;
 int max_regno ;
 int* reg_renumber ;

void
dump_local_alloc (FILE *file)
{
  int i;
  for (i = FIRST_PSEUDO_REGISTER; i < max_regno; i++)
    if (reg_renumber[i] != -1)
      fprintf (file, ";; Register %d in %d.\n", i, reg_renumber[i]);
}
