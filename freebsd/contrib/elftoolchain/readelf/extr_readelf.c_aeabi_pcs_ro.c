
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_ro ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_pcs_ro(uint64_t ro)
{
 static char s_ro[32];

 switch (ro) {
 case 0: return "Absolute";
 case 1: return "PC-relative";
 case 2: return "None";
 default:
  snprintf(s_ro, sizeof(s_ro), "Unknown (%ju)", (uintmax_t) ro);
  return (s_ro);
 }
}
