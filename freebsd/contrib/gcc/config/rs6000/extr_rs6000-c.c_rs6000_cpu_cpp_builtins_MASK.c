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
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
#define  ABI_AIX 130 
#define  ABI_DARWIN 129 
#define  ABI_V4 128 
 scalar_t__ PROCESSOR_PPC405 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ TARGET_ALTIVEC ; 
 scalar_t__ TARGET_FPRND ; 
 int /*<<< orphan*/  TARGET_FPRS ; 
 scalar_t__ TARGET_LONG_DOUBLE_128 ; 
 scalar_t__ TARGET_MFCRF ; 
 scalar_t__ TARGET_NO_LWSYNC ; 
 scalar_t__ TARGET_POPCNTB ; 
 scalar_t__ TARGET_POWER ; 
 scalar_t__ TARGET_POWER2 ; 
 scalar_t__ TARGET_POWERPC ; 
 scalar_t__ TARGET_POWERPC64 ; 
 scalar_t__ TARGET_PPC_GFXOPT ; 
 scalar_t__ TARGET_PPC_GPOPT ; 
 scalar_t__ TARGET_SOFT_FLOAT ; 
 scalar_t__ TARGET_SPE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ rs6000_cpu ; 
 int rs6000_current_abi ; 

void
FUNC2 (cpp_reader *pfile)
{
  if (TARGET_POWER2)
    FUNC1 ("_ARCH_PWR2");
  else if (TARGET_POWER)
    FUNC1 ("_ARCH_PWR");
  if (TARGET_POWERPC)
    FUNC1 ("_ARCH_PPC");
  if (TARGET_PPC_GPOPT)
    FUNC1 ("_ARCH_PPCSQ");
  if (TARGET_PPC_GFXOPT)
    FUNC1 ("_ARCH_PPCGR");
  if (TARGET_POWERPC64)
    FUNC1 ("_ARCH_PPC64");
  if (TARGET_MFCRF)
    FUNC1 ("_ARCH_PWR4");
  if (TARGET_POPCNTB)
    FUNC1 ("_ARCH_PWR5");
  if (TARGET_FPRND)
    FUNC1 ("_ARCH_PWR5X");
  if (! TARGET_POWER && ! TARGET_POWER2 && ! TARGET_POWERPC)
    FUNC1 ("_ARCH_COM");
  if (TARGET_ALTIVEC)
    {
      FUNC1 ("__ALTIVEC__");
      FUNC1 ("__VEC__=10206");

      /* Define the AltiVec syntactic elements.  */
      FUNC1 ("__vector=__attribute__((altivec(vector__)))");
      FUNC1 ("__pixel=__attribute__((altivec(pixel__))) unsigned short");
      FUNC1 ("__bool=__attribute__((altivec(bool__))) unsigned");
    }
  if (TARGET_SPE)
    FUNC1 ("__SPE__");
  if (TARGET_SOFT_FLOAT)
    FUNC1 ("_SOFT_FLOAT");
  /* Used by lwarx/stwcx. errata work-around.  */
  if (rs6000_cpu == PROCESSOR_PPC405)
    FUNC1 ("__PPC405__");
  /* Used by libstdc++.  */
  if (TARGET_NO_LWSYNC)
    FUNC1 ("__NO_LWSYNC__");

  /* May be overridden by target configuration.  */
  FUNC0();

  if (TARGET_LONG_DOUBLE_128)
    FUNC1 ("__LONG_DOUBLE_128__");

  switch (rs6000_current_abi)
    {
    case ABI_V4:
      FUNC1 ("_CALL_SYSV");
      break;
    case ABI_AIX:
      FUNC1 ("_CALL_AIXDESC");
      FUNC1 ("_CALL_AIX");
      break;
    case ABI_DARWIN:
      FUNC1 ("_CALL_DARWIN");
      break;
    default:
      break;
    }

  /* Let the compiled code know if 'f' class registers will not be available.  */
  if (TARGET_SOFT_FLOAT || !TARGET_FPRS)
    FUNC1 ("__NO_FPRS__");
}