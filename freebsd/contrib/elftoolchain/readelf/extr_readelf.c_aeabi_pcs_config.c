
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int s_pcs ;


 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static const char *
aeabi_pcs_config(uint64_t pcs)
{
 static char s_pcs[32];

 switch (pcs) {
 case 0: return "None";
 case 1: return "Bare platform";
 case 2: return "Linux";
 case 3: return "Linux DSO";
 case 4: return "Palm OS 2004";
 case 5: return "Palm OS (future)";
 case 6: return "Symbian OS 2004";
 case 7: return "Symbian OS (future)";
 default:
  snprintf(s_pcs, sizeof(s_pcs), "Unknown (%ju)",
      (uintmax_t) pcs);
  return (s_pcs);
 }
}
