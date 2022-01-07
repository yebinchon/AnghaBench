
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_endian ;





 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_endian(unsigned int endian)
{
 static char s_endian[32];

 switch (endian) {
 case 128: return "none";
 case 130: return "2's complement, little endian";
 case 129: return "2's complement, big endian";
 default:
  snprintf(s_endian, sizeof(s_endian), "<unknown: %#x>", endian);
  return (s_endian);
 }
}
