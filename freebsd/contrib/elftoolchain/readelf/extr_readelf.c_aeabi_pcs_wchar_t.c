
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_wt ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_pcs_wchar_t(uint64_t wt)
{
 static char s_wt[32];

 switch (wt) {
 case 0: return "None";
 case 2: return "wchar_t size 2";
 case 4: return "wchar_t size 4";
 default:
  snprintf(s_wt, sizeof(s_wt), "Unknown (%ju)", (uintmax_t) wt);
  return (s_wt);
 }
}
