
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_ua ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_unaligned_access(uint64_t ua)
{
 static char s_ua[32];

 switch (ua) {
 case 0: return "Not allowed";
 case 1: return "Allowed";
 default:
  snprintf(s_ua, sizeof(s_ua), "Unknown(%ju)", (uintmax_t) ua);
  return (s_ua);
 }
}
