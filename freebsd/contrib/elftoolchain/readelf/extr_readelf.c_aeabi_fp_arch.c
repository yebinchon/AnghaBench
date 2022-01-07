
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_fp_arch ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_fp_arch(uint64_t fp)
{
 static char s_fp_arch[32];

 switch (fp) {
 case 0: return "No";
 case 1: return "VFPv1";
 case 2: return "VFPv2";
 case 3: return "VFPv3";
 case 4: return "VFPv3-D16";
 case 5: return "VFPv4";
 case 6: return "VFPv4-D16";
 default:
  snprintf(s_fp_arch, sizeof(s_fp_arch), "Unknown (%ju)",
      (uintmax_t) fp);
  return (s_fp_arch);
 }
}
