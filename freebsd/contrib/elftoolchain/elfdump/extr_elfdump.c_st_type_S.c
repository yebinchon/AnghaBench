
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_type ;







 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
st_type_S(unsigned int type)
{
 static char s_type[32];

 switch (type) {
 case 130: return "NOTY";
 case 129: return "OBJT";
 case 131: return "FUNC";
 case 128: return "SECT";
 case 132: return "FILE";
 }
 snprintf(s_type, sizeof(s_type), "<unknown: %#x>", type);
 return (s_type);
}
