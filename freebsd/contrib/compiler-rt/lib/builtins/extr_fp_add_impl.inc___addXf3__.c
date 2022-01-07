
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rep_t ;
typedef int fp_t ;


 scalar_t__ const REP_C (int) ;
 scalar_t__ absMask ;
 int fromRep (scalar_t__ const) ;
 scalar_t__ implicitBit ;
 scalar_t__ const infRep ;
 scalar_t__ maxExponent ;
 int normalize (scalar_t__*) ;
 scalar_t__ qnanRep ;
 scalar_t__ quietBit ;
 int rep_clz (scalar_t__) ;
 scalar_t__ signBit ;
 scalar_t__ significandBits ;
 scalar_t__ significandMask ;
 scalar_t__ toRep (int ) ;
 unsigned int const typeWidth ;

__attribute__((used)) static __inline fp_t __addXf3__(fp_t a, fp_t b) {
  rep_t aRep = toRep(a);
  rep_t bRep = toRep(b);
  const rep_t aAbs = aRep & absMask;
  const rep_t bAbs = bRep & absMask;


  if (aAbs - REP_C(1) >= infRep - REP_C(1) ||
      bAbs - REP_C(1) >= infRep - REP_C(1)) {

    if (aAbs > infRep)
      return fromRep(toRep(a) | quietBit);

    if (bAbs > infRep)
      return fromRep(toRep(b) | quietBit);

    if (aAbs == infRep) {

      if ((toRep(a) ^ toRep(b)) == signBit)
        return fromRep(qnanRep);

      else
        return a;
    }


    if (bAbs == infRep)
      return b;


    if (!aAbs) {

      if (!bAbs)
        return fromRep(toRep(a) & toRep(b));
      else
        return b;
    }


    if (!bAbs)
      return a;
  }


  if (bAbs > aAbs) {
    const rep_t temp = aRep;
    aRep = bRep;
    bRep = temp;
  }


  int aExponent = aRep >> significandBits & maxExponent;
  int bExponent = bRep >> significandBits & maxExponent;
  rep_t aSignificand = aRep & significandMask;
  rep_t bSignificand = bRep & significandMask;


  if (aExponent == 0)
    aExponent = normalize(&aSignificand);
  if (bExponent == 0)
    bExponent = normalize(&bSignificand);




  const rep_t resultSign = aRep & signBit;
  const bool subtraction = (aRep ^ bRep) & signBit;





  aSignificand = (aSignificand | implicitBit) << 3;
  bSignificand = (bSignificand | implicitBit) << 3;



  const unsigned int align = aExponent - bExponent;
  if (align) {
    if (align < typeWidth) {
      const bool sticky = bSignificand << (typeWidth - align);
      bSignificand = bSignificand >> align | sticky;
    } else {
      bSignificand = 1;
    }
  }
  if (subtraction) {
    aSignificand -= bSignificand;

    if (aSignificand == 0)
      return fromRep(0);



    if (aSignificand < implicitBit << 3) {
      const int shift = rep_clz(aSignificand) - rep_clz(implicitBit << 3);
      aSignificand <<= shift;
      aExponent -= shift;
    }
  } else {
    aSignificand += bSignificand;



    if (aSignificand & implicitBit << 4) {
      const bool sticky = aSignificand & 1;
      aSignificand = aSignificand >> 1 | sticky;
      aExponent += 1;
    }
  }


  if (aExponent >= maxExponent)
    return fromRep(infRep | resultSign);

  if (aExponent <= 0) {


    const int shift = 1 - aExponent;
    const bool sticky = aSignificand << (typeWidth - shift);
    aSignificand = aSignificand >> shift | sticky;
    aExponent = 0;
  }


  const int roundGuardSticky = aSignificand & 0x7;


  rep_t result = aSignificand >> 3 & significandMask;


  result |= (rep_t)aExponent << significandBits;
  result |= resultSign;



  if (roundGuardSticky > 0x4)
    result++;
  if (roundGuardSticky == 0x4)
    result += result & 1;
  return fromRep(result);
}
