
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int n_fixups ;

void
write_print_statistics (FILE *file)
{
  fprintf (file, "fixups: %d\n", n_fixups);
}
