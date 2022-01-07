
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_du ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_div(uint64_t du)
{
 static char s_du[32];

 switch (du) {
 case 0: return "Yes (V7-R/V7-M)";
 case 1: return "No";
 case 2: return "Yes (V7-A)";
 default:
  snprintf(s_du, sizeof(s_du), "Unknown (%ju)",
      (uintmax_t) du);
  return (s_du);
 }
}
