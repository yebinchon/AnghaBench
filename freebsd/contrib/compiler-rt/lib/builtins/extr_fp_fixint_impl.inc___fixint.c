
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rep_t ;
typedef int fp_t ;
typedef int fixuint_t ;
typedef int fixint_t ;


 int CHAR_BIT ;
 int const absMask ;
 int const exponentBias ;
 int const implicitBit ;
 int const signBit ;
 int const significandBits ;
 int const significandMask ;
 int toRep (int ) ;

__attribute__((used)) static __inline fixint_t __fixint(fp_t a) {
  const fixint_t fixint_max = (fixint_t)((~(fixuint_t)0) / 2);
  const fixint_t fixint_min = -fixint_max - 1;

  const rep_t aRep = toRep(a);
  const rep_t aAbs = aRep & absMask;
  const fixint_t sign = aRep & signBit ? -1 : 1;
  const int exponent = (aAbs >> significandBits) - exponentBias;
  const rep_t significand = (aAbs & significandMask) | implicitBit;


  if (exponent < 0)
    return 0;


  if ((unsigned)exponent >= sizeof(fixint_t) * CHAR_BIT)
    return sign == 1 ? fixint_max : fixint_min;



  if (exponent < significandBits)
    return sign * (significand >> (significandBits - exponent));
  else
    return sign * ((fixint_t)significand << (exponent - significandBits));
}
