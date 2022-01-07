
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_align_p ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_align_preserved(uint64_t ap)
{
 static char s_align_p[128];

 switch (ap) {
 case 0: return "No";
 case 1: return "8-byte align";
 case 2: return "8-byte align and SP % 8 == 0";
 case 3: return "Reserved";
 default:
  if (ap >= 4 && ap <= 12)
   snprintf(s_align_p, sizeof(s_align_p), "8-byte align"
       " and SP %% 8 == 0 and up to 2^%ju-byte extended"
       " align", (uintmax_t) ap);
  else
   snprintf(s_align_p, sizeof(s_align_p), "Unknown (%ju)",
       (uintmax_t) ap);
  return (s_align_p);
 }
}
