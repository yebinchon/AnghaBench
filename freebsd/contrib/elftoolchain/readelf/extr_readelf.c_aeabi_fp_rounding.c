
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fp_r ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_rounding(uint64_t fr)
{
 static char s_fp_r[32];

 switch (fr) {
 case 0: return "Unused";
 case 1: return "Needed";
 default:
  snprintf(s_fp_r, sizeof(s_fp_r), "Unknown (%ju)",
      (uintmax_t) fr);
  return (s_fp_r);
 }
}
