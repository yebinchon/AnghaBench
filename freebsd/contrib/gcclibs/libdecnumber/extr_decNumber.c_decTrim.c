
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uInt ;
struct TYPE_6__ {int bits; int* lsu; int exponent; int digits; } ;
typedef TYPE_1__ decNumber ;
typedef size_t Unit ;
typedef int Int ;
typedef int Flag ;


 int D2U (int) ;
 size_t DECDPUN ;
 int DECSPECIAL ;
 int DECUNUSED ;
 scalar_t__ ISZERO (TYPE_1__*) ;
 size_t QUOT10 (size_t,size_t) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,int ,int ) ;
 int decShiftToLeast (size_t*,int ,int) ;
 size_t* powers ;

__attribute__((used)) static decNumber *
decTrim (decNumber * dn, Flag all, Int * dropped)
{
  Int d, exp;
  uInt cut;
  Unit *up;






  *dropped = 0;
  if ((dn->bits & DECSPECIAL)
      || (*dn->lsu & 0x01))
    return dn;
  if (ISZERO (dn))
    {
      dn->exponent = 0;
      return dn;
    }


  exp = dn->exponent;
  cut = 1;
  up = dn->lsu;
  for (d = 0; d < dn->digits - 1; d++)
    {


      uInt quot = QUOT10 (*up, cut);
      if ((*up - quot * powers[cut]) != 0)
 break;





      if (!all)
 {

   if (exp <= 0)
     {
       if (exp == 0)
  break;
       exp++;
     }
 }
      cut++;
      if (cut > DECDPUN)
 {
   up++;
   cut = 1;
 }
    }
  if (d == 0)
    return dn;


  decShiftToLeast (dn->lsu, D2U (dn->digits), d);
  dn->exponent += d;
  dn->digits -= d;
  *dropped = d;
  return dn;
}
