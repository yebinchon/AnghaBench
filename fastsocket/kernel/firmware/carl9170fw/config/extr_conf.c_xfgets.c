
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fgets (char*,int,int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

void xfgets(char *str, int size, FILE *in)
{
 if (fgets(str, size, in) == ((void*)0))
  fprintf(stderr, "\nError in reading or end of file.\n");
}
