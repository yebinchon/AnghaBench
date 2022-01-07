
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* lambda_vector ;


 int gcc_assert (int) ;

__attribute__((used)) static inline int
lambda_vector_min_nz (lambda_vector vec1, int n, int start)
{
  int j;
  int min = -1;

  gcc_assert (start <= n);
  for (j = start; j < n; j++)
    {
      if (vec1[j])
 if (min < 0 || vec1[j] < vec1[min])
   min = j;
    }
  gcc_assert (min >= 0);

  return min;
}
