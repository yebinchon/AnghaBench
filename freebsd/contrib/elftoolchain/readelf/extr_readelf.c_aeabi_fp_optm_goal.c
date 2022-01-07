
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fog ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_optm_goal(uint64_t fog)
{
 static char s_fog[32];

 switch (fog) {
 case 0: return "None";
 case 1: return "Speed";
 case 2: return "Speed aggressive";
 case 3: return "Space";
 case 4: return "Space aggressive";
 case 5: return "Accurary";
 case 6: return "Best Accurary";
 default:
  snprintf(s_fog, sizeof(s_fog), "Unknown(%ju)",
      (uintmax_t) fog);
  return (s_fog);
 }
}
