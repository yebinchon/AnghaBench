
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGEST ;
typedef int LONGEST ;


 scalar_t__ isdigit (char const) ;

int
ada_scan_number (const char str[], int k, LONGEST * R, int *new_k)
{
  ULONGEST RU;

  if (!isdigit (str[k]))
    return 0;




  RU = 0;
  while (isdigit (str[k]))
    {
      RU = RU * 10 + (str[k] - '0');
      k += 1;
    }

  if (str[k] == 'm')
    {
      if (R != ((void*)0))
 *R = (-(LONGEST) (RU - 1)) - 1;
      k += 1;
    }
  else if (R != ((void*)0))
    *R = (LONGEST) RU;







  if (new_k != ((void*)0))
    *new_k = k;
  return 1;
}
