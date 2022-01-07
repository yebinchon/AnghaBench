
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_ai ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_arm_isa(uint64_t ai)
{
 static char s_ai[32];

 switch (ai) {
 case 0: return "No";
 case 1: return "Yes";
 default:
  snprintf(s_ai, sizeof(s_ai), "Unknown (%ju)\n",
      (uintmax_t) ai);
  return (s_ai);
 }
}
