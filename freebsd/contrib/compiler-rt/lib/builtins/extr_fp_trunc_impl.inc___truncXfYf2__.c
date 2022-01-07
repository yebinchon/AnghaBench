
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int src_t ;
typedef int src_rep_t ;
typedef int dst_t ;
typedef int dst_rep_t ;


 int CHAR_BIT ;
 int const DST_REP_C (int) ;
 int const SRC_REP_C (int) ;
 int dstFromRep (int const) ;
 int const dstSigBits ;
 int const srcSigBits ;
 int srcToRep (int ) ;

__attribute__((used)) static __inline dst_t __truncXfYf2__(src_t a) {


  const int srcBits = sizeof(src_t) * CHAR_BIT;
  const int srcExpBits = srcBits - srcSigBits - 1;
  const int srcInfExp = (1 << srcExpBits) - 1;
  const int srcExpBias = srcInfExp >> 1;

  const src_rep_t srcMinNormal = SRC_REP_C(1) << srcSigBits;
  const src_rep_t srcSignificandMask = srcMinNormal - 1;
  const src_rep_t srcInfinity = (src_rep_t)srcInfExp << srcSigBits;
  const src_rep_t srcSignMask = SRC_REP_C(1) << (srcSigBits + srcExpBits);
  const src_rep_t srcAbsMask = srcSignMask - 1;
  const src_rep_t roundMask = (SRC_REP_C(1) << (srcSigBits - dstSigBits)) - 1;
  const src_rep_t halfway = SRC_REP_C(1) << (srcSigBits - dstSigBits - 1);
  const src_rep_t srcQNaN = SRC_REP_C(1) << (srcSigBits - 1);
  const src_rep_t srcNaNCode = srcQNaN - 1;

  const int dstBits = sizeof(dst_t) * CHAR_BIT;
  const int dstExpBits = dstBits - dstSigBits - 1;
  const int dstInfExp = (1 << dstExpBits) - 1;
  const int dstExpBias = dstInfExp >> 1;

  const int underflowExponent = srcExpBias + 1 - dstExpBias;
  const int overflowExponent = srcExpBias + dstInfExp - dstExpBias;
  const src_rep_t underflow = (src_rep_t)underflowExponent << srcSigBits;
  const src_rep_t overflow = (src_rep_t)overflowExponent << srcSigBits;

  const dst_rep_t dstQNaN = DST_REP_C(1) << (dstSigBits - 1);
  const dst_rep_t dstNaNCode = dstQNaN - 1;


  const src_rep_t aRep = srcToRep(a);
  const src_rep_t aAbs = aRep & srcAbsMask;
  const src_rep_t sign = aRep & srcSignMask;
  dst_rep_t absResult;

  if (aAbs - underflow < aAbs - overflow) {



    absResult = aAbs >> (srcSigBits - dstSigBits);
    absResult -= (dst_rep_t)(srcExpBias - dstExpBias) << dstSigBits;

    const src_rep_t roundBits = aAbs & roundMask;

    if (roundBits > halfway)
      absResult++;

    else if (roundBits == halfway)
      absResult += absResult & 1;
  } else if (aAbs > srcInfinity) {



    absResult = (dst_rep_t)dstInfExp << dstSigBits;
    absResult |= dstQNaN;
    absResult |=
        ((aAbs & srcNaNCode) >> (srcSigBits - dstSigBits)) & dstNaNCode;
  } else if (aAbs >= overflow) {

    absResult = (dst_rep_t)dstInfExp << dstSigBits;
  } else {



    const int aExp = aAbs >> srcSigBits;
    const int shift = srcExpBias - dstExpBias - aExp + 1;

    const src_rep_t significand = (aRep & srcSignificandMask) | srcMinNormal;


    if (shift > srcSigBits) {
      absResult = 0;
    } else {
      const bool sticky = significand << (srcBits - shift);
      src_rep_t denormalizedSignificand = significand >> shift | sticky;
      absResult = denormalizedSignificand >> (srcSigBits - dstSigBits);
      const src_rep_t roundBits = denormalizedSignificand & roundMask;

      if (roundBits > halfway)
        absResult++;

      else if (roundBits == halfway)
        absResult += absResult & 1;
    }
  }


  const dst_rep_t result = absResult | sign >> (srcBits - dstBits);
  return dstFromRep(result);
}
