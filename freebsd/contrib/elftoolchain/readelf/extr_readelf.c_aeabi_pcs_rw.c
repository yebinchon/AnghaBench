
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_rw ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_pcs_rw(uint64_t rw)
{
 static char s_rw[32];

 switch (rw) {
 case 0: return "Absolute";
 case 1: return "PC-relative";
 case 2: return "SB-relative";
 case 3: return "None";
 default:
  snprintf(s_rw, sizeof(s_rw), "Unknown (%ju)", (uintmax_t) rw);
  return (s_rw);
 }
}
