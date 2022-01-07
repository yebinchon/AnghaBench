
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rep_t ;
typedef double fp_t ;


 int absMask ;
 int exponentBias ;
 int exponentMask ;
 double fromRep (int) ;
 int infRep ;
 int maxExponent ;
 int normalize (int*) ;
 int signBit ;
 int significandBits ;
 int toRep (double) ;

__attribute__((used)) static __inline fp_t __compiler_rt_logbX(fp_t x) {
  rep_t rep = toRep(x);
  int exp = (rep & exponentMask) >> significandBits;




  if (exp == maxExponent) {
    if (((rep & signBit) == 0) || (x != x)) {
      return x;
    } else {
      return -x;
    }
  } else if (x == 0.0) {

    return fromRep(infRep | signBit);
  }

  if (exp != 0) {

    return exp - exponentBias;
  } else {

    rep &= absMask;
    const int shift = 1 - normalize(&rep);
    exp = (rep & exponentMask) >> significandBits;
    return exp - exponentBias - shift;
  }
}
