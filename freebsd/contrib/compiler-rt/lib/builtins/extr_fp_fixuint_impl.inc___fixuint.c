
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rep_t ;
typedef int fp_t ;
typedef int const fixuint_t ;


 int CHAR_BIT ;
 int const absMask ;
 int const exponentBias ;
 int const implicitBit ;
 int const signBit ;
 int const significandBits ;
 int const significandMask ;
 int toRep (int ) ;

__attribute__((used)) static __inline fixuint_t __fixuint(fp_t a) {

  const rep_t aRep = toRep(a);
  const rep_t aAbs = aRep & absMask;
  const int sign = aRep & signBit ? -1 : 1;
  const int exponent = (aAbs >> significandBits) - exponentBias;
  const rep_t significand = (aAbs & significandMask) | implicitBit;


  if (sign == -1 || exponent < 0)
    return 0;


  if ((unsigned)exponent >= sizeof(fixuint_t) * CHAR_BIT)
    return ~(fixuint_t)0;



  if (exponent < significandBits)
    return significand >> (significandBits - exponent);
  else
    return (fixuint_t)significand << (exponent - significandBits);
}
