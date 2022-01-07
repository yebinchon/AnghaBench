
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_class ;





 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_class(unsigned int class)
{
 static char s_class[32];

 switch (class) {
 case 128: return "none";
 case 130: return "ELF32";
 case 129: return "ELF64";
 default:
  snprintf(s_class, sizeof(s_class), "<unknown: %#x>", class);
  return (s_class);
 }
}
