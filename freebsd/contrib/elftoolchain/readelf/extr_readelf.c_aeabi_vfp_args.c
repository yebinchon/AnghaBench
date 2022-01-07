
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_va ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_vfp_args(uint64_t va)
{
 static char s_va[32];

 switch (va) {
 case 0: return "AAPCS (base variant)";
 case 1: return "AAPCS (VFP variant)";
 case 2: return "toolchain-specific";
 default:
  snprintf(s_va, sizeof(s_va), "Unknown (%ju)", (uintmax_t) va);
  return (s_va);
 }
}
