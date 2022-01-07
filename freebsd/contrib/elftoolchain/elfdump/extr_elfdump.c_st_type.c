
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_type ;


 unsigned int EM_SPARCV9 ;







 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
st_type(unsigned int mach, unsigned int type)
{
 static char s_type[32];

 switch (type) {
 case 131: return "STT_NOTYPE";
 case 130: return "STT_OBJECT";
 case 132: return "STT_FUNC";
 case 129: return "STT_SECTION";
 case 133: return "STT_FILE";
 case 134: return "STT_COMMON";
 case 128: return "STT_TLS";
 case 13:
  if (mach == EM_SPARCV9)
   return "STT_SPARC_REGISTER";
  break;
 }
 snprintf(s_type, sizeof(s_type), "<unknown: %#x>", type);
 return (s_type);
}
