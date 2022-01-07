
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int Unit ;
typedef int Int ;


 int DECDPUN ;
 int* powers ;

__attribute__((used)) static Int
decGetDigits (const Unit * uar, Int len)
{
  const Unit *up = uar + len - 1;
  Int digits = len * DECDPUN;
  uInt const *pow;

  for (; up >= uar; up--)
    {
      digits -= DECDPUN;
      if (*up == 0)
 {
   if (digits != 0)
     continue;

   digits++;
   break;
 }

      digits++;
      if (*up < 10)
 break;
      digits++;
      for (pow = &powers[2]; *up >= *pow; pow++)
 digits++;
      break;
    }

  return digits;
}
