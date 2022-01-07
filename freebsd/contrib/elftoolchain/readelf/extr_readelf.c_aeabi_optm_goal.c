
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_og ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_optm_goal(uint64_t og)
{
 static char s_og[32];

 switch (og) {
 case 0: return "None";
 case 1: return "Speed";
 case 2: return "Speed aggressive";
 case 3: return "Space";
 case 4: return "Space aggressive";
 case 5: return "Debugging";
 case 6: return "Best Debugging";
 default:
  snprintf(s_og, sizeof(s_og), "Unknown(%ju)", (uintmax_t) og);
  return (s_og);
 }
}
