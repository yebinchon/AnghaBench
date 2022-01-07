
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int** lambda_matrix ;


 int lambda_matrix_inverse_hard (int**,int**,int) ;

int
lambda_matrix_inverse (lambda_matrix mat, lambda_matrix inv, int n)
{
  if (n == 2)
    {
      int a, b, c, d, det;
      a = mat[0][0];
      b = mat[1][0];
      c = mat[0][1];
      d = mat[1][1];
      inv[0][0] = d;
      inv[0][1] = -c;
      inv[1][0] = -b;
      inv[1][1] = a;
      det = (a * d - b * c);
      if (det < 0)
 {
   det *= -1;
   inv[0][0] *= -1;
   inv[1][0] *= -1;
   inv[0][1] *= -1;
   inv[1][1] *= -1;
 }
      return det;
    }
  else
    return lambda_matrix_inverse_hard (mat, inv, n);
}
