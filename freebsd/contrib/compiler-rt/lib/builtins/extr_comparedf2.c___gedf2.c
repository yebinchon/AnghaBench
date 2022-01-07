
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srep_t ;
typedef int rep_t ;
typedef int fp_t ;
typedef enum GE_RESULT { ____Placeholder_GE_RESULT } GE_RESULT ;


 int GE_EQUAL ;
 int GE_GREATER ;
 int GE_LESS ;
 int GE_UNORDERED ;
 int const absMask ;
 int const infRep ;
 int toRep (int ) ;

enum GE_RESULT __gedf2(fp_t a, fp_t b) {

  const srep_t aInt = toRep(a);
  const srep_t bInt = toRep(b);
  const rep_t aAbs = aInt & absMask;
  const rep_t bAbs = bInt & absMask;

  if (aAbs > infRep || bAbs > infRep)
    return GE_UNORDERED;
  if ((aAbs | bAbs) == 0)
    return GE_EQUAL;
  if ((aInt & bInt) >= 0) {
    if (aInt < bInt)
      return GE_LESS;
    else if (aInt == bInt)
      return GE_EQUAL;
    else
      return GE_GREATER;
  } else {
    if (aInt > bInt)
      return GE_LESS;
    else if (aInt == bInt)
      return GE_EQUAL;
    else
      return GE_GREATER;
  }
}
