
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_7__ {scalar_t__ exponent; scalar_t__* lsu; int digits; int bits; } ;
typedef TYPE_1__ decNumber ;
typedef scalar_t__ Unit ;
typedef scalar_t__ Int ;
typedef int Flag ;


 int D2U (int) ;
 int DECDPUN ;
 int DECSNAN ;
 int DECSPECIAL ;
 int DECUNUSED ;
 int ISZERO (TYPE_1__ const*) ;
 int TODIGIT (scalar_t__,scalar_t__,char*) ;
 scalar_t__ decCheckOperands (int ,TYPE_1__ const*,int ,int ) ;
 scalar_t__ decNumberIsInfinite (TYPE_1__ const*) ;
 scalar_t__ decNumberIsNegative (TYPE_1__ const*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
decToString (const decNumber * dn, char *string, Flag eng)
{
  Int exp = dn->exponent;
  Int e;
  Int pre;
  Int cut;
  char *c = string;
  const Unit *up = dn->lsu + D2U (dn->digits) - 1;
  uInt u, pow;
  if (decNumberIsNegative (dn))
    {
      *c = '-';
      c++;
    }
  if (dn->bits & DECSPECIAL)
    {
      if (decNumberIsInfinite (dn))
 {
   strcpy (c, "Infinity");
   return;
 }

      if (dn->bits & DECSNAN)
 {
   *c = 's';
   c++;
 }
      strcpy (c, "NaN");
      c += 3;


      if (exp != 0 || (*dn->lsu == 0 && dn->digits == 1))
 return;

    }


  cut = dn->digits % DECDPUN;
  if (cut == 0)
    cut = DECDPUN;
  cut--;

  if (exp == 0)
    {

      for (; up >= dn->lsu; up--)
 {
   u = *up;
   for (; cut >= 0; c++, cut--)
     TODIGIT (u, cut, c);
   cut = DECDPUN - 1;
 }
      *c = '\0';
      return;
    }


  pre = dn->digits + exp;
  e = 0;
  if ((exp > 0) || (pre < -5))
    {
      e = exp + dn->digits - 1;
      pre = 1;
      if (eng && (e != 0))
 {
   Int adj;


   if (e < 0)
     {
       adj = (-e) % 3;
       if (adj != 0)
  adj = 3 - adj;
     }
   else
     {
       adj = e % 3;
     }
   e = e - adj;



   if (!ISZERO (dn))
     pre += adj;
   else
     {
       if (adj != 0)
  {
    e = e + 3;
    pre = -(2 - adj);
  }
     }
 }
    }


  u = *up;
  if (pre > 0)
    {
      for (; pre > 0; pre--, c++, cut--)
 {
   if (cut < 0)
     {
       if (up == dn->lsu)
  break;
       up--;
       cut = DECDPUN - 1;
       u = *up;
     }
   TODIGIT (u, cut, c);
 }
      if (up > dn->lsu || (up == dn->lsu && cut >= 0))
 {
   *c = '.';
   c++;
   for (;; c++, cut--)
     {
       if (cut < 0)
  {
    if (up == dn->lsu)
      break;
    up--;
    cut = DECDPUN - 1;
    u = *up;
  }
       TODIGIT (u, cut, c);
     }
 }
      else
 for (; pre > 0; pre--, c++)
   *c = '0';
    }
  else
    {
      *c = '0';
      c++;
      *c = '.';
      c++;
      for (; pre < 0; pre++, c++)
 *c = '0';
      for (;; c++, cut--)
 {
   if (cut < 0)
     {
       if (up == dn->lsu)
  break;
       up--;
       cut = DECDPUN - 1;
       u = *up;
     }
   TODIGIT (u, cut, c);
 }
    }




  if (e != 0)
    {
      Flag had = 0;
      *c = 'E';
      c++;
      *c = '+';
      c++;
      u = e;
      if (e < 0)
 {
   *(c - 1) = '-';
   u = -e;
 }

      for (cut = 9; cut >= 0; cut--)
 {
   TODIGIT (u, cut, c);
   if (*c == '0' && !had)
     continue;
   had = 1;
   c++;
 }
    }
  *c = '\0';
  return;
}
