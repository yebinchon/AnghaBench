
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fp_u ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_user_exceptions(uint64_t fu)
{
 static char s_fp_u[32];

 switch (fu) {
 case 0: return "Unused";
 case 1: return "Needed";
 default:
  snprintf(s_fp_u, sizeof(s_fp_u), "Unknown (%ju)",
      (uintmax_t) fu);
  return (s_fp_u);
 }
}
