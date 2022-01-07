
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ** lambda_matrix ;


 int lambda_vector_first_nz (int *,int,int) ;

int
lambda_matrix_first_nz_vec (lambda_matrix mat, int rowsize, int colsize,
       int startrow)
{
  int j;
  bool found = 0;

  for (j = startrow; (j < rowsize) && !found; j++)
    {
      if ((mat[j] != ((void*)0))
   && (lambda_vector_first_nz (mat[j], colsize, startrow) < colsize))
 found = 1;
    }

  if (found)
    return j - 1;
  return rowsize;
}
