
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int double_int ;
typedef int FILE ;


 int double_int_neg (int ) ;
 scalar_t__ double_int_negative_p (int ) ;
 unsigned int double_int_split_digit (int *,int) ;
 scalar_t__ double_int_zero_p (int ) ;
 int fprintf (int *,char*,...) ;

void
dump_double_int (FILE *file, double_int cst, bool uns)
{
  unsigned digits[100], n;
  int i;

  if (double_int_zero_p (cst))
    {
      fprintf (file, "0");
      return;
    }

  if (!uns && double_int_negative_p (cst))
    {
      fprintf (file, "-");
      cst = double_int_neg (cst);
    }

  for (n = 0; !double_int_zero_p (cst); n++)
    digits[n] = double_int_split_digit (&cst, 10);
  for (i = n - 1; i >= 0; i--)
    fprintf (file, "%u", digits[i]);
}
