
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_arch_profile ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_cpu_arch_profile(uint64_t pf)
{
 static char s_arch_profile[32];

 switch (pf) {
 case 0:
  return "Not applicable";
 case 0x41:
  return "Application Profile";
 case 0x52:
  return "Real-Time Profile";
 case 0x4D:
  return "Microcontroller Profile";
 case 0x53:
  return "Application or Real-Time Profile";
 default:
  snprintf(s_arch_profile, sizeof(s_arch_profile),
      "Unknown (%ju)\n", (uintmax_t) pf);
  return (s_arch_profile);
 }
}
