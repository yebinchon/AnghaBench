
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_sbind ;




 unsigned int STB_HIOS ;
 unsigned int STB_HIPROC ;

 unsigned int STB_LOOS ;
 unsigned int STB_LOPROC ;

 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
st_bindings_S(unsigned int sbind)
{
 static char s_sbind[32];

 switch (sbind) {
 case 129: return "LOCL";
 case 131: return "GLOB";
 case 128: return "WEAK";
 case 130: return "UNIQ";
 default:
  if (sbind >= STB_LOOS && sbind <= STB_HIOS)
   return "OS";
  else if (sbind >= STB_LOPROC && sbind <= STB_HIPROC)
   return "PROC";
  else
   snprintf(s_sbind, sizeof(s_sbind), "<%#x>",
       sbind);
  return (s_sbind);
 }
}
