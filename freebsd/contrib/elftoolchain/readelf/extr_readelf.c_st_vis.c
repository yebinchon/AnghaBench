
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_svis ;






 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
st_vis(unsigned int svis)
{
 static char s_svis[32];

 switch(svis) {
 case 131: return "DEFAULT";
 case 129: return "INTERNAL";
 case 130: return "HIDDEN";
 case 128: return "PROTECTED";
 default:
  snprintf(s_svis, sizeof(s_svis), "<unknown: %#x>", svis);
  return (s_svis);
 }
}
