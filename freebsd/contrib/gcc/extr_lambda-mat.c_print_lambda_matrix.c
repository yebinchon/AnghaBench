
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lambda_matrix ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int print_lambda_vector (int *,int ,int) ;

void
print_lambda_matrix (FILE * outfile, lambda_matrix matrix, int m, int n)
{
  int i;

  for (i = 0; i < m; i++)
    print_lambda_vector (outfile, matrix[i], n);
  fprintf (outfile, "\n");
}
