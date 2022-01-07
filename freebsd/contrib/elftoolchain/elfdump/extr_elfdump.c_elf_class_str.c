
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_class ;





 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_class_str(unsigned int class)
{
 static char s_class[32];

 switch (class) {
 case 128: return "ELFCLASSNONE";
 case 130: return "ELFCLASS32";
 case 129: return "ELFCLASS64";
 }
 snprintf(s_class, sizeof(s_class), "<unknown: %#x>", class);
 return (s_class);
}
