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
typedef  double fp_t ;

/* Variables and functions */
 int absMask ; 
 int exponentBias ; 
 int exponentMask ; 
 double FUNC0 (int) ; 
 int infRep ; 
 int maxExponent ; 
 int FUNC1 (int*) ; 
 int signBit ; 
 int significandBits ; 
 int FUNC2 (double) ; 

__attribute__((used)) static __inline fp_t FUNC3(fp_t x) {
  rep_t rep = FUNC2(x);
  int exp = (rep & exponentMask) >> significandBits;

  // Abnormal cases:
  // 1) +/- inf returns +inf; NaN returns NaN
  // 2) 0.0 returns -inf
  if (exp == maxExponent) {
    if (((rep & signBit) == 0) || (x != x)) {
      return x; // NaN or +inf: return x
    } else {
      return -x; // -inf: return -x
    }
  } else if (x == 0.0) {
    // 0.0: return -inf
    return FUNC0(infRep | signBit);
  }

  if (exp != 0) {
    // Normal number
    return exp - exponentBias; // Unbias exponent
  } else {
    // Subnormal number; normalize and repeat
    rep &= absMask;
    const int shift = 1 - FUNC1(&rep);
    exp = (rep & exponentMask) >> significandBits;
    return exp - exponentBias - shift; // Unbias exponent
  }
}