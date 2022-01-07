
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_hfp ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_hardfp(uint64_t hfp)
{
 static char s_hfp[32];

 switch (hfp) {
 case 0: return "Tag_FP_arch";
 case 1: return "only SP";
 case 2: return "only DP";
 case 3: return "both SP and DP";
 default:
  snprintf(s_hfp, sizeof(s_hfp), "Unknown (%ju)",
      (uintmax_t) hfp);
  return (s_hfp);
 }
}
