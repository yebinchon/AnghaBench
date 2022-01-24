#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int rep_t ;
typedef  int /*<<< orphan*/  fp_t ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int absMask ; 
 unsigned int const exponentBias ; 
 int exponentBits ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int const implicitBit ; 
 int const infRep ; 
 unsigned int maxExponent ; 
 scalar_t__ FUNC2 (int*) ; 
 int qnanRep ; 
 int quietBit ; 
 int signBit ; 
 unsigned int significandBits ; 
 int significandMask ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int const typeWidth ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,unsigned int const) ; 

__attribute__((used)) static __inline fp_t FUNC7(fp_t a, fp_t b) {
  const unsigned int aExponent = FUNC3(a) >> significandBits & maxExponent;
  const unsigned int bExponent = FUNC3(b) >> significandBits & maxExponent;
  const rep_t productSign = (FUNC3(a) ^ FUNC3(b)) & signBit;

  rep_t aSignificand = FUNC3(a) & significandMask;
  rep_t bSignificand = FUNC3(b) & significandMask;
  int scale = 0;

  // Detect if a or b is zero, denormal, infinity, or NaN.
  if (aExponent - 1U >= maxExponent - 1U ||
      bExponent - 1U >= maxExponent - 1U) {

    const rep_t aAbs = FUNC3(a) & absMask;
    const rep_t bAbs = FUNC3(b) & absMask;

    // NaN * anything = qNaN
    if (aAbs > infRep)
      return FUNC1(FUNC3(a) | quietBit);
    // anything * NaN = qNaN
    if (bAbs > infRep)
      return FUNC1(FUNC3(b) | quietBit);

    if (aAbs == infRep) {
      // infinity * non-zero = +/- infinity
      if (bAbs)
        return FUNC1(aAbs | productSign);
      // infinity * zero = NaN
      else
        return FUNC1(qnanRep);
    }

    if (bAbs == infRep) {
      // non-zero * infinity = +/- infinity
      if (aAbs)
        return FUNC1(bAbs | productSign);
      // zero * infinity = NaN
      else
        return FUNC1(qnanRep);
    }

    // zero * anything = +/- zero
    if (!aAbs)
      return FUNC1(productSign);
    // anything * zero = +/- zero
    if (!bAbs)
      return FUNC1(productSign);

    // One or both of a or b is denormal.  The other (if applicable) is a
    // normal number.  Renormalize one or both of a and b, and set scale to
    // include the necessary exponent adjustment.
    if (aAbs < implicitBit)
      scale += FUNC2(&aSignificand);
    if (bAbs < implicitBit)
      scale += FUNC2(&bSignificand);
  }

  // Set the implicit significand bit.  If we fell through from the
  // denormal path it was already set by normalize( ), but setting it twice
  // won't hurt anything.
  aSignificand |= implicitBit;
  bSignificand |= implicitBit;

  // Perform a basic multiplication on the significands.  One of them must be
  // shifted beforehand to be aligned with the exponent.
  rep_t productHi, productLo;
  FUNC5(aSignificand, bSignificand << exponentBits, &productHi,
               &productLo);

  int productExponent = aExponent + bExponent - exponentBias + scale;

  // Normalize the significand and adjust the exponent if needed.
  if (productHi & implicitBit)
    productExponent++;
  else
    FUNC4(&productHi, &productLo, 1);

  // If we have overflowed the type, return +/- infinity.
  if (productExponent >= maxExponent)
    return FUNC1(infRep | productSign);

  if (productExponent <= 0) {
    // The result is denormal before rounding.
    //
    // If the result is so small that it just underflows to zero, return
    // zero with the appropriate sign.  Mathematically, there is no need to
    // handle this case separately, but we make it a special case to
    // simplify the shift logic.
    const unsigned int shift = FUNC0(1) - (unsigned int)productExponent;
    if (shift >= typeWidth)
      return FUNC1(productSign);

    // Otherwise, shift the significand of the result so that the round
    // bit is the high bit of productLo.
    FUNC6(&productHi, &productLo, shift);
  } else {
    // The result is normal before rounding.  Insert the exponent.
    productHi &= significandMask;
    productHi |= (rep_t)productExponent << significandBits;
  }

  // Insert the sign of the result.
  productHi |= productSign;

  // Perform the final rounding.  The final result may overflow to infinity,
  // or underflow to zero, but those are the correct results in those cases.
  // We use the default IEEE-754 round-to-nearest, ties-to-even rounding mode.
  if (productLo > signBit)
    productHi++;
  if (productLo == signBit)
    productHi += productHi & 1;
  return FUNC1(productHi);
}