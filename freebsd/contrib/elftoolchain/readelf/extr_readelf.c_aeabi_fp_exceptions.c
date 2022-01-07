
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fp_e ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_exceptions(uint64_t fe)
{
 static char s_fp_e[32];

 switch (fe) {
 case 0: return "Unused";
 case 1: return "Needed";
 default:
  snprintf(s_fp_e, sizeof(s_fp_e), "Unknown (%ju)",
      (uintmax_t) fe);
  return (s_fp_e);
 }
}
