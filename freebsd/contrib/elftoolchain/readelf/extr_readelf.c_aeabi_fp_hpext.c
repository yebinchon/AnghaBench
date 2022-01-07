
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fh ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_hpext(uint64_t fh)
{
 static char s_fh[32];

 switch (fh) {
 case 0: return "Not allowed";
 case 1: return "Allowed";
 default:
  snprintf(s_fh, sizeof(s_fh), "Unknown(%ju)", (uintmax_t) fh);
  return (s_fh);
 }
}
