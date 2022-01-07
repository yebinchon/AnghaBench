
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_simd ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_adv_simd_arch(uint64_t simd)
{
 static char s_simd[32];

 switch (simd) {
 case 0: return "No";
 case 1: return "NEONv1";
 case 2: return "NEONv2";
 default:
  snprintf(s_simd, sizeof(s_simd), "Unknown (%ju)",
      (uintmax_t) simd);
  return (s_simd);
 }
}
