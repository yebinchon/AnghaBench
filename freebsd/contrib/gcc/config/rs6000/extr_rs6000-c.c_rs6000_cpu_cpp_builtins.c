
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;





 scalar_t__ PROCESSOR_PPC405 ;
 int RS6000_CPU_CPP_ENDIAN_BUILTINS () ;
 scalar_t__ TARGET_ALTIVEC ;
 scalar_t__ TARGET_FPRND ;
 int TARGET_FPRS ;
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
 int builtin_define (char*) ;
 scalar_t__ rs6000_cpu ;
 int rs6000_current_abi ;

void
rs6000_cpu_cpp_builtins (cpp_reader *pfile)
{
  if (TARGET_POWER2)
    builtin_define ("_ARCH_PWR2");
  else if (TARGET_POWER)
    builtin_define ("_ARCH_PWR");
  if (TARGET_POWERPC)
    builtin_define ("_ARCH_PPC");
  if (TARGET_PPC_GPOPT)
    builtin_define ("_ARCH_PPCSQ");
  if (TARGET_PPC_GFXOPT)
    builtin_define ("_ARCH_PPCGR");
  if (TARGET_POWERPC64)
    builtin_define ("_ARCH_PPC64");
  if (TARGET_MFCRF)
    builtin_define ("_ARCH_PWR4");
  if (TARGET_POPCNTB)
    builtin_define ("_ARCH_PWR5");
  if (TARGET_FPRND)
    builtin_define ("_ARCH_PWR5X");
  if (! TARGET_POWER && ! TARGET_POWER2 && ! TARGET_POWERPC)
    builtin_define ("_ARCH_COM");
  if (TARGET_ALTIVEC)
    {
      builtin_define ("__ALTIVEC__");
      builtin_define ("__VEC__=10206");


      builtin_define ("__vector=__attribute__((altivec(vector__)))");
      builtin_define ("__pixel=__attribute__((altivec(pixel__))) unsigned short");
      builtin_define ("__bool=__attribute__((altivec(bool__))) unsigned");
    }
  if (TARGET_SPE)
    builtin_define ("__SPE__");
  if (TARGET_SOFT_FLOAT)
    builtin_define ("_SOFT_FLOAT");

  if (rs6000_cpu == PROCESSOR_PPC405)
    builtin_define ("__PPC405__");

  if (TARGET_NO_LWSYNC)
    builtin_define ("__NO_LWSYNC__");


  RS6000_CPU_CPP_ENDIAN_BUILTINS();

  if (TARGET_LONG_DOUBLE_128)
    builtin_define ("__LONG_DOUBLE_128__");

  switch (rs6000_current_abi)
    {
    case 128:
      builtin_define ("_CALL_SYSV");
      break;
    case 130:
      builtin_define ("_CALL_AIXDESC");
      builtin_define ("_CALL_AIX");
      break;
    case 129:
      builtin_define ("_CALL_DARWIN");
      break;
    default:
      break;
    }


  if (TARGET_SOFT_FLOAT || !TARGET_FPRS)
    builtin_define ("__NO_FPRS__");
}
