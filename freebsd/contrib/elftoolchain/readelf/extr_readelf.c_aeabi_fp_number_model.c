
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fp_n ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_number_model(uint64_t fn)
{
 static char s_fp_n[32];

 switch (fn) {
 case 0: return "Unused";
 case 1: return "IEEE 754 normal";
 case 2: return "RTABI";
 case 3: return "IEEE 754";
 default:
  snprintf(s_fp_n, sizeof(s_fp_n), "Unknown (%ju)",
      (uintmax_t) fn);
  return (s_fp_n);
 }
}
