
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FEATURE_AES ;
 int FEATURE_AVX ;
 int FEATURE_AVX2 ;
 int FEATURE_AVX5124FMAPS ;
 int FEATURE_AVX5124VNNIW ;
 int FEATURE_AVX512BITALG ;
 int FEATURE_AVX512BW ;
 int FEATURE_AVX512CD ;
 int FEATURE_AVX512DQ ;
 int FEATURE_AVX512ER ;
 int FEATURE_AVX512F ;
 int FEATURE_AVX512IFMA ;
 int FEATURE_AVX512PF ;
 int FEATURE_AVX512VBMI ;
 int FEATURE_AVX512VBMI2 ;
 int FEATURE_AVX512VL ;
 int FEATURE_AVX512VNNI ;
 int FEATURE_AVX512VPOPCNTDQ ;
 int FEATURE_BMI ;
 int FEATURE_BMI2 ;
 int FEATURE_CMOV ;
 int FEATURE_FMA ;
 int FEATURE_FMA4 ;
 int FEATURE_GFNI ;
 int FEATURE_MMX ;
 int FEATURE_PCLMUL ;
 int FEATURE_POPCNT ;
 int FEATURE_SSE ;
 int FEATURE_SSE2 ;
 int FEATURE_SSE3 ;
 int FEATURE_SSE4_1 ;
 int FEATURE_SSE4_2 ;
 int FEATURE_SSE4_A ;
 int FEATURE_SSSE3 ;
 int FEATURE_VPCLMULQDQ ;
 int FEATURE_XOP ;
 int getX86CpuIDAndInfo (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int getX86CpuIDAndInfoEx (int,int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int getX86XCR0 (unsigned int*,unsigned int*) ;
 int setFeature (int ) ;

__attribute__((used)) static void getAvailableFeatures(unsigned ECX, unsigned EDX, unsigned MaxLeaf,
                                 unsigned *FeaturesOut,
                                 unsigned *Features2Out) {
  unsigned Features = 0;
  unsigned Features2 = 0;
  unsigned EAX, EBX;
  if ((EDX >> 15) & 1)
    do { if (FEATURE_CMOV < 32) Features |= 1U << (FEATURE_CMOV & 0x1f); else if (FEATURE_CMOV < 64) Features2 |= 1U << ((FEATURE_CMOV - 32) & 0x1f); } while (0);
  if ((EDX >> 23) & 1)
    do { if (FEATURE_MMX < 32) Features |= 1U << (FEATURE_MMX & 0x1f); else if (FEATURE_MMX < 64) Features2 |= 1U << ((FEATURE_MMX - 32) & 0x1f); } while (0);
  if ((EDX >> 25) & 1)
    do { if (FEATURE_SSE < 32) Features |= 1U << (FEATURE_SSE & 0x1f); else if (FEATURE_SSE < 64) Features2 |= 1U << ((FEATURE_SSE - 32) & 0x1f); } while (0);
  if ((EDX >> 26) & 1)
    do { if (FEATURE_SSE2 < 32) Features |= 1U << (FEATURE_SSE2 & 0x1f); else if (FEATURE_SSE2 < 64) Features2 |= 1U << ((FEATURE_SSE2 - 32) & 0x1f); } while (0);

  if ((ECX >> 0) & 1)
    do { if (FEATURE_SSE3 < 32) Features |= 1U << (FEATURE_SSE3 & 0x1f); else if (FEATURE_SSE3 < 64) Features2 |= 1U << ((FEATURE_SSE3 - 32) & 0x1f); } while (0);
  if ((ECX >> 1) & 1)
    do { if (FEATURE_PCLMUL < 32) Features |= 1U << (FEATURE_PCLMUL & 0x1f); else if (FEATURE_PCLMUL < 64) Features2 |= 1U << ((FEATURE_PCLMUL - 32) & 0x1f); } while (0);
  if ((ECX >> 9) & 1)
    do { if (FEATURE_SSSE3 < 32) Features |= 1U << (FEATURE_SSSE3 & 0x1f); else if (FEATURE_SSSE3 < 64) Features2 |= 1U << ((FEATURE_SSSE3 - 32) & 0x1f); } while (0);
  if ((ECX >> 12) & 1)
    do { if (FEATURE_FMA < 32) Features |= 1U << (FEATURE_FMA & 0x1f); else if (FEATURE_FMA < 64) Features2 |= 1U << ((FEATURE_FMA - 32) & 0x1f); } while (0);
  if ((ECX >> 19) & 1)
    do { if (FEATURE_SSE4_1 < 32) Features |= 1U << (FEATURE_SSE4_1 & 0x1f); else if (FEATURE_SSE4_1 < 64) Features2 |= 1U << ((FEATURE_SSE4_1 - 32) & 0x1f); } while (0);
  if ((ECX >> 20) & 1)
    do { if (FEATURE_SSE4_2 < 32) Features |= 1U << (FEATURE_SSE4_2 & 0x1f); else if (FEATURE_SSE4_2 < 64) Features2 |= 1U << ((FEATURE_SSE4_2 - 32) & 0x1f); } while (0);
  if ((ECX >> 23) & 1)
    do { if (FEATURE_POPCNT < 32) Features |= 1U << (FEATURE_POPCNT & 0x1f); else if (FEATURE_POPCNT < 64) Features2 |= 1U << ((FEATURE_POPCNT - 32) & 0x1f); } while (0);
  if ((ECX >> 25) & 1)
    do { if (FEATURE_AES < 32) Features |= 1U << (FEATURE_AES & 0x1f); else if (FEATURE_AES < 64) Features2 |= 1U << ((FEATURE_AES - 32) & 0x1f); } while (0);




  const unsigned AVXBits = (1 << 27) | (1 << 28);
  bool HasAVX = ((ECX & AVXBits) == AVXBits) && !getX86XCR0(&EAX, &EDX) &&
                ((EAX & 0x6) == 0x6);
  bool HasAVX512Save = HasAVX && ((EAX & 0xe0) == 0xe0);

  if (HasAVX)
    do { if (FEATURE_AVX < 32) Features |= 1U << (FEATURE_AVX & 0x1f); else if (FEATURE_AVX < 64) Features2 |= 1U << ((FEATURE_AVX - 32) & 0x1f); } while (0);

  bool HasLeaf7 =
      MaxLeaf >= 0x7 && !getX86CpuIDAndInfoEx(0x7, 0x0, &EAX, &EBX, &ECX, &EDX);

  if (HasLeaf7 && ((EBX >> 3) & 1))
    do { if (FEATURE_BMI < 32) Features |= 1U << (FEATURE_BMI & 0x1f); else if (FEATURE_BMI < 64) Features2 |= 1U << ((FEATURE_BMI - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 5) & 1) && HasAVX)
    do { if (FEATURE_AVX2 < 32) Features |= 1U << (FEATURE_AVX2 & 0x1f); else if (FEATURE_AVX2 < 64) Features2 |= 1U << ((FEATURE_AVX2 - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 8) & 1))
    do { if (FEATURE_BMI2 < 32) Features |= 1U << (FEATURE_BMI2 & 0x1f); else if (FEATURE_BMI2 < 64) Features2 |= 1U << ((FEATURE_BMI2 - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 16) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512F < 32) Features |= 1U << (FEATURE_AVX512F & 0x1f); else if (FEATURE_AVX512F < 64) Features2 |= 1U << ((FEATURE_AVX512F - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 17) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512DQ < 32) Features |= 1U << (FEATURE_AVX512DQ & 0x1f); else if (FEATURE_AVX512DQ < 64) Features2 |= 1U << ((FEATURE_AVX512DQ - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 21) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512IFMA < 32) Features |= 1U << (FEATURE_AVX512IFMA & 0x1f); else if (FEATURE_AVX512IFMA < 64) Features2 |= 1U << ((FEATURE_AVX512IFMA - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 26) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512PF < 32) Features |= 1U << (FEATURE_AVX512PF & 0x1f); else if (FEATURE_AVX512PF < 64) Features2 |= 1U << ((FEATURE_AVX512PF - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 27) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512ER < 32) Features |= 1U << (FEATURE_AVX512ER & 0x1f); else if (FEATURE_AVX512ER < 64) Features2 |= 1U << ((FEATURE_AVX512ER - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 28) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512CD < 32) Features |= 1U << (FEATURE_AVX512CD & 0x1f); else if (FEATURE_AVX512CD < 64) Features2 |= 1U << ((FEATURE_AVX512CD - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 30) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512BW < 32) Features |= 1U << (FEATURE_AVX512BW & 0x1f); else if (FEATURE_AVX512BW < 64) Features2 |= 1U << ((FEATURE_AVX512BW - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EBX >> 31) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512VL < 32) Features |= 1U << (FEATURE_AVX512VL & 0x1f); else if (FEATURE_AVX512VL < 64) Features2 |= 1U << ((FEATURE_AVX512VL - 32) & 0x1f); } while (0);

  if (HasLeaf7 && ((ECX >> 1) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512VBMI < 32) Features |= 1U << (FEATURE_AVX512VBMI & 0x1f); else if (FEATURE_AVX512VBMI < 64) Features2 |= 1U << ((FEATURE_AVX512VBMI - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((ECX >> 6) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512VBMI2 < 32) Features |= 1U << (FEATURE_AVX512VBMI2 & 0x1f); else if (FEATURE_AVX512VBMI2 < 64) Features2 |= 1U << ((FEATURE_AVX512VBMI2 - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((ECX >> 8) & 1))
    do { if (FEATURE_GFNI < 32) Features |= 1U << (FEATURE_GFNI & 0x1f); else if (FEATURE_GFNI < 64) Features2 |= 1U << ((FEATURE_GFNI - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((ECX >> 10) & 1) && HasAVX)
    do { if (FEATURE_VPCLMULQDQ < 32) Features |= 1U << (FEATURE_VPCLMULQDQ & 0x1f); else if (FEATURE_VPCLMULQDQ < 64) Features2 |= 1U << ((FEATURE_VPCLMULQDQ - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((ECX >> 11) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512VNNI < 32) Features |= 1U << (FEATURE_AVX512VNNI & 0x1f); else if (FEATURE_AVX512VNNI < 64) Features2 |= 1U << ((FEATURE_AVX512VNNI - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((ECX >> 12) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512BITALG < 32) Features |= 1U << (FEATURE_AVX512BITALG & 0x1f); else if (FEATURE_AVX512BITALG < 64) Features2 |= 1U << ((FEATURE_AVX512BITALG - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((ECX >> 14) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX512VPOPCNTDQ < 32) Features |= 1U << (FEATURE_AVX512VPOPCNTDQ & 0x1f); else if (FEATURE_AVX512VPOPCNTDQ < 64) Features2 |= 1U << ((FEATURE_AVX512VPOPCNTDQ - 32) & 0x1f); } while (0);

  if (HasLeaf7 && ((EDX >> 2) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX5124VNNIW < 32) Features |= 1U << (FEATURE_AVX5124VNNIW & 0x1f); else if (FEATURE_AVX5124VNNIW < 64) Features2 |= 1U << ((FEATURE_AVX5124VNNIW - 32) & 0x1f); } while (0);
  if (HasLeaf7 && ((EDX >> 3) & 1) && HasAVX512Save)
    do { if (FEATURE_AVX5124FMAPS < 32) Features |= 1U << (FEATURE_AVX5124FMAPS & 0x1f); else if (FEATURE_AVX5124FMAPS < 64) Features2 |= 1U << ((FEATURE_AVX5124FMAPS - 32) & 0x1f); } while (0);

  unsigned MaxExtLevel;
  getX86CpuIDAndInfo(0x80000000, &MaxExtLevel, &EBX, &ECX, &EDX);

  bool HasExtLeaf1 = MaxExtLevel >= 0x80000001 &&
                     !getX86CpuIDAndInfo(0x80000001, &EAX, &EBX, &ECX, &EDX);
  if (HasExtLeaf1 && ((ECX >> 6) & 1))
    do { if (FEATURE_SSE4_A < 32) Features |= 1U << (FEATURE_SSE4_A & 0x1f); else if (FEATURE_SSE4_A < 64) Features2 |= 1U << ((FEATURE_SSE4_A - 32) & 0x1f); } while (0);
  if (HasExtLeaf1 && ((ECX >> 11) & 1))
    do { if (FEATURE_XOP < 32) Features |= 1U << (FEATURE_XOP & 0x1f); else if (FEATURE_XOP < 64) Features2 |= 1U << ((FEATURE_XOP - 32) & 0x1f); } while (0);
  if (HasExtLeaf1 && ((ECX >> 16) & 1))
    do { if (FEATURE_FMA4 < 32) Features |= 1U << (FEATURE_FMA4 & 0x1f); else if (FEATURE_FMA4 < 64) Features2 |= 1U << ((FEATURE_FMA4 - 32) & 0x1f); } while (0);

  *FeaturesOut = Features;
  *Features2Out = Features2;

}
