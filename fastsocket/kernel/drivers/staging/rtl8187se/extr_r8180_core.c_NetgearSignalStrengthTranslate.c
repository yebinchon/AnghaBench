
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RetSS ;



long NetgearSignalStrengthTranslate(long LastSS, long CurrSS)
{
 long RetSS;


 if (CurrSS >= 71 && CurrSS <= 100)
  RetSS = 90 + ((CurrSS - 70) / 3);
 else if (CurrSS >= 41 && CurrSS <= 70)
  RetSS = 78 + ((CurrSS - 40) / 3);
 else if (CurrSS >= 31 && CurrSS <= 40)
  RetSS = 66 + (CurrSS - 30);
 else if (CurrSS >= 21 && CurrSS <= 30)
  RetSS = 54 + (CurrSS - 20);
 else if (CurrSS >= 5 && CurrSS <= 20)
  RetSS = 42 + (((CurrSS - 5) * 2) / 3);
 else if (CurrSS == 4)
  RetSS = 36;
 else if (CurrSS == 3)
  RetSS = 27;
 else if (CurrSS == 2)
  RetSS = 18;
 else if (CurrSS == 1)
  RetSS = 9;
 else
  RetSS = CurrSS;


 if(LastSS > 0)
  RetSS = ((LastSS * 5) + (RetSS)+ 5) / 6;

 return RetSS;
}
