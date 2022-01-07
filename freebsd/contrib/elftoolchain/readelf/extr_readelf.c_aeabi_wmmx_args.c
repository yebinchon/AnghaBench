
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_wa ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_wmmx_args(uint64_t wa)
{
 static char s_wa[32];

 switch (wa) {
 case 0: return "AAPCS (base variant)";
 case 1: return "Intel WMMX";
 case 2: return "toolchain-specific";
 default:
  snprintf(s_wa, sizeof(s_wa), "Unknown(%ju)", (uintmax_t) wa);
  return (s_wa);
 }
}
