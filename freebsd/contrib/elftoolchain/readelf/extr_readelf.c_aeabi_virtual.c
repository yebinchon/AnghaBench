
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_virtual ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_virtual(uint64_t vt)
{
 static char s_virtual[64];

 switch (vt) {
 case 0: return "No";
 case 1: return "TrustZone";
 case 2: return "Virtualization extension";
 case 3: return "TrustZone and virtualization extension";
 default:
  snprintf(s_virtual, sizeof(s_virtual), "Unknown(%ju)",
      (uintmax_t) vt);
  return (s_virtual);
 }
}
