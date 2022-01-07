
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_r9 ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_pcs_r9(uint64_t r9)
{
 static char s_r9[32];

 switch (r9) {
 case 0: return "V6";
 case 1: return "SB";
 case 2: return "TLS pointer";
 case 3: return "Unused";
 default:
  snprintf(s_r9, sizeof(s_r9), "Unknown (%ju)", (uintmax_t) r9);
  return (s_r9);
 }
}
