
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int accbuff ;
typedef scalar_t__ Unit ;
typedef scalar_t__ Int ;


 scalar_t__ BADINT ;
 scalar_t__ D2U (scalar_t__) ;
 int DECBUFFER ;
 scalar_t__ DECDPUN ;
 scalar_t__ decUnitAddSub (scalar_t__ const*,scalar_t__,scalar_t__ const*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__) ;
 int free (scalar_t__*) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__* powers ;

__attribute__((used)) static Int
decUnitCompare (const Unit * a, Int alength, const Unit * b, Int blength, Int exp)
{
  Unit *acc;
  Unit accbuff[D2U (DECBUFFER + 1)];
  Unit *allocacc = ((void*)0);
  Int accunits, need;
  const Unit *l, *r, *u;
  Int expunits, exprem, result;

  if (exp == 0)
    {
      if (alength > blength)
 return 1;
      if (alength < blength)
 return -1;

      l = a + alength - 1;
      r = b + alength - 1;
      for (; l >= a; l--, r--)
 {
   if (*l > *r)
     return 1;
   if (*l < *r)
     return -1;
 }
      return 0;
    }



  if (alength > blength + (Int) D2U (exp))
    return 1;
  if (alength + 1 < blength + (Int) D2U (exp))
    return -1;




  need = blength + D2U (exp);
  if (need < alength)
    need = alength;
  need += 2;
  acc = accbuff;
  if (need * sizeof (Unit) > sizeof (accbuff))
    {
      allocacc = (Unit *) malloc (need * sizeof (Unit));
      if (allocacc == ((void*)0))
 return BADINT;
      acc = allocacc;
    }

  expunits = exp / DECDPUN;
  exprem = exp % DECDPUN;

  accunits = decUnitAddSub (a, alength, b, blength, expunits, acc,
       -(Int) powers[exprem]);

  if (accunits < 0)
    result = -1;
  else
    {

      for (u = acc; u < acc + accunits - 1 && *u == 0;)
 u++;
      result = (*u == 0 ? 0 : +1);
    }

  if (allocacc != ((void*)0))
    free (allocacc);
  return result;
}
