
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_es ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_enum_size(uint64_t es)
{
 static char s_es[32];

 switch (es) {
 case 0: return "None";
 case 1: return "smallest";
 case 2: return "32-bit";
 case 3: return "visible 32-bit";
 default:
  snprintf(s_es, sizeof(s_es), "Unknown (%ju)", (uintmax_t) es);
  return (s_es);
 }
}
