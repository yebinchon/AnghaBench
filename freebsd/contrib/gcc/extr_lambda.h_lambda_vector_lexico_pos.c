
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* lambda_vector ;



__attribute__((used)) static inline bool
lambda_vector_lexico_pos (lambda_vector v,
     unsigned n)
{
  unsigned i;
  for (i = 0; i < n; i++)
    {
      if (v[i] == 0)
 continue;
      if (v[i] < 0)
 return 0;
      if (v[i] > 0)
 return 1;
    }
  return 1;
}
