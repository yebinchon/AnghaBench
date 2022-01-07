
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fp_d ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_denormal(uint64_t fd)
{
 static char s_fp_d[32];

 switch (fd) {
 case 0: return "Unused";
 case 1: return "Needed";
 case 2: return "Sign Only";
 default:
  snprintf(s_fp_d, sizeof(s_fp_d), "Unknown (%ju)",
      (uintmax_t) fd);
  return (s_fp_d);
 }
}
