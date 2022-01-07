
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srep_t ;
typedef int rep_t ;
typedef int fp_t ;
typedef enum LE_RESULT { ____Placeholder_LE_RESULT } LE_RESULT ;


 int LE_EQUAL ;
 int LE_GREATER ;
 int LE_LESS ;
 int LE_UNORDERED ;
 int const absMask ;
 int const infRep ;
 int toRep (int ) ;

enum LE_RESULT __lesf2(fp_t a, fp_t b) {

  const srep_t aInt = toRep(a);
  const srep_t bInt = toRep(b);
  const rep_t aAbs = aInt & absMask;
  const rep_t bAbs = bInt & absMask;


  if (aAbs > infRep || bAbs > infRep)
    return LE_UNORDERED;


  if ((aAbs | bAbs) == 0)
    return LE_EQUAL;



  if ((aInt & bInt) >= 0) {
    if (aInt < bInt)
      return LE_LESS;
    else if (aInt == bInt)
      return LE_EQUAL;
    else
      return LE_GREATER;
  }





  else {
    if (aInt > bInt)
      return LE_LESS;
    else if (aInt == bInt)
      return LE_EQUAL;
    else
      return LE_GREATER;
  }
}
