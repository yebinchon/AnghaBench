
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fp_16 ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_16bit_format(uint64_t fp16)
{
 static char s_fp_16[64];

 switch (fp16) {
 case 0: return "None";
 case 1: return "IEEE 754";
 case 2: return "VFPv3/Advanced SIMD (alternative format)";
 default:
  snprintf(s_fp_16, sizeof(s_fp_16), "Unknown (%ju)",
      (uintmax_t) fp16);
  return (s_fp_16);
 }
}
