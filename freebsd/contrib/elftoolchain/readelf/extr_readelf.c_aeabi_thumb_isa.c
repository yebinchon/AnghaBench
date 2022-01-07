
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_ti ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_thumb_isa(uint64_t ti)
{
 static char s_ti[32];

 switch (ti) {
 case 0: return "No";
 case 1: return "16-bit Thumb";
 case 2: return "32-bit Thumb";
 default:
  snprintf(s_ti, sizeof(s_ti), "Unknown (%ju)\n",
      (uintmax_t) ti);
  return (s_ti);
 }
}
