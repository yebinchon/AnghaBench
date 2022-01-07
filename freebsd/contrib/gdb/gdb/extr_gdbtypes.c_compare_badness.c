
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badness_vector {int length; int* rank; } ;



int
compare_badness (struct badness_vector *a, struct badness_vector *b)
{
  int i;
  int tmp;
  short found_pos = 0;
  short found_neg = 0;


  if (a->length != b->length)
    return 1;


  for (i = 0; i < a->length; i++)
    {
      tmp = a->rank[i] - b->rank[i];
      if (tmp > 0)
 found_pos = 1;
      else if (tmp < 0)
 found_neg = 1;
    }

  if (found_pos)
    {
      if (found_neg)
 return 1;
      else
 return 3;
    }
  else

    {
      if (found_neg)
 return 2;
      else
 return 0;
    }
}
