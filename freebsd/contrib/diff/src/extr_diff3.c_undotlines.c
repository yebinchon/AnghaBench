
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lin ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
undotlines (FILE *outputfile, bool leading_dot, long int start, lin num)
{
  fprintf (outputfile, ".\n");
  if (leading_dot)
    {
      if (num == 1)
 fprintf (outputfile, "%lds/^\\.//\n", start);
      else
 fprintf (outputfile, "%ld,%lds/^\\.//\n", start, start + num - 1);
    }
}
