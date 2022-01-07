
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_type ;





 unsigned int ET_HIOS ;
 unsigned int ET_LOOS ;
 unsigned int ET_LOPROC ;


 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_type_str(unsigned int type)
{
 static char s_type[32];

 switch (type)
 {
 case 129: return "ET_NONE";
 case 128: return "ET_REL";
 case 130: return "ET_EXEC";
 case 131: return "ET_DYN";
 case 132: return "ET_CORE";
 }
 if (type >= ET_LOPROC)
  snprintf(s_type, sizeof(s_type), "<proc: %#x>", type);
 else if (type >= ET_LOOS && type <= ET_HIOS)
  snprintf(s_type, sizeof(s_type), "<os: %#x>", type);
 else
  snprintf(s_type, sizeof(s_type), "<unknown: %#x", type);
 return (s_type);
}
