
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_mips_abi_fp ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
mips_abi_fp(uint64_t fp)
{
 static char s_mips_abi_fp[64];

 switch (fp) {
 case 0: return "N/A";
 case 1: return "Hard float (double precision)";
 case 2: return "Hard float (single precision)";
 case 3: return "Soft float";
 case 4: return "64-bit float (-mips32r2 -mfp64)";
 default:
  snprintf(s_mips_abi_fp, sizeof(s_mips_abi_fp), "Unknown(%ju)",
      (uintmax_t) fp);
  return (s_mips_abi_fp);
 }
}
