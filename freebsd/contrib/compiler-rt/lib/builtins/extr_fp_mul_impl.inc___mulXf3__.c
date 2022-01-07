
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rep_t ;
typedef int fp_t ;


 unsigned int REP_C (int) ;
 int absMask ;
 unsigned int const exponentBias ;
 int exponentBits ;
 int fromRep (int const) ;
 int const implicitBit ;
 int const infRep ;
 unsigned int maxExponent ;
 scalar_t__ normalize (int*) ;
 int qnanRep ;
 int quietBit ;
 int signBit ;
 unsigned int significandBits ;
 int significandMask ;
 int toRep (int ) ;
 unsigned int const typeWidth ;
 int wideLeftShift (int*,int*,int) ;
 int wideMultiply (int,int,int*,int*) ;
 int wideRightShiftWithSticky (int*,int*,unsigned int const) ;

__attribute__((used)) static __inline fp_t __mulXf3__(fp_t a, fp_t b) {
  const unsigned int aExponent = toRep(a) >> significandBits & maxExponent;
  const unsigned int bExponent = toRep(b) >> significandBits & maxExponent;
  const rep_t productSign = (toRep(a) ^ toRep(b)) & signBit;

  rep_t aSignificand = toRep(a) & significandMask;
  rep_t bSignificand = toRep(b) & significandMask;
  int scale = 0;


  if (aExponent - 1U >= maxExponent - 1U ||
      bExponent - 1U >= maxExponent - 1U) {

    const rep_t aAbs = toRep(a) & absMask;
    const rep_t bAbs = toRep(b) & absMask;


    if (aAbs > infRep)
      return fromRep(toRep(a) | quietBit);

    if (bAbs > infRep)
      return fromRep(toRep(b) | quietBit);

    if (aAbs == infRep) {

      if (bAbs)
        return fromRep(aAbs | productSign);

      else
        return fromRep(qnanRep);
    }

    if (bAbs == infRep) {

      if (aAbs)
        return fromRep(bAbs | productSign);

      else
        return fromRep(qnanRep);
    }


    if (!aAbs)
      return fromRep(productSign);

    if (!bAbs)
      return fromRep(productSign);




    if (aAbs < implicitBit)
      scale += normalize(&aSignificand);
    if (bAbs < implicitBit)
      scale += normalize(&bSignificand);
  }




  aSignificand |= implicitBit;
  bSignificand |= implicitBit;



  rep_t productHi, productLo;
  wideMultiply(aSignificand, bSignificand << exponentBits, &productHi,
               &productLo);

  int productExponent = aExponent + bExponent - exponentBias + scale;


  if (productHi & implicitBit)
    productExponent++;
  else
    wideLeftShift(&productHi, &productLo, 1);


  if (productExponent >= maxExponent)
    return fromRep(infRep | productSign);

  if (productExponent <= 0) {






    const unsigned int shift = REP_C(1) - (unsigned int)productExponent;
    if (shift >= typeWidth)
      return fromRep(productSign);



    wideRightShiftWithSticky(&productHi, &productLo, shift);
  } else {

    productHi &= significandMask;
    productHi |= (rep_t)productExponent << significandBits;
  }


  productHi |= productSign;




  if (productLo > signBit)
    productHi++;
  if (productLo == signBit)
    productHi += productHi & 1;
  return fromRep(productHi);
}
