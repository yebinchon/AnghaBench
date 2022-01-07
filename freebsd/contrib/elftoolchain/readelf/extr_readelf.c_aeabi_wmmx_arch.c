
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_wmmx ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_wmmx_arch(uint64_t wmmx)
{
 static char s_wmmx[32];

 switch (wmmx) {
 case 0: return "No";
 case 1: return "WMMXv1";
 case 2: return "WMMXv2";
 default:
  snprintf(s_wmmx, sizeof(s_wmmx), "Unknown (%ju)",
      (uintmax_t) wmmx);
  return (s_wmmx);
 }
}
