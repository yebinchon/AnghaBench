
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* lambda_vector ;
typedef int FILE ;


 int abs (scalar_t__) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
print_linear_expression (FILE * outfile, lambda_vector expr, int size,
    char start)
{
  int i;
  bool first = 1;
  for (i = 0; i < size; i++)
    {
      if (expr[i] != 0)
 {
   if (first)
     {
       if (expr[i] < 0)
  fprintf (outfile, "-");
       first = 0;
     }
   else if (expr[i] > 0)
     fprintf (outfile, " + ");
   else
     fprintf (outfile, " - ");
   if (abs (expr[i]) == 1)
     fprintf (outfile, "%c", start + i);
   else
     fprintf (outfile, "%d%c", abs (expr[i]), start + i);
 }
    }
}
