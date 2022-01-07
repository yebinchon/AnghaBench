
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_data ;





 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_data_str(unsigned int data)
{
 static char s_data[32];

 switch (data) {
 case 128: return "ELFDATANONE";
 case 130: return "ELFDATA2LSB";
 case 129: return "ELFDATA2MSB";
 }
 snprintf(s_data, sizeof(s_data), "<unknown: %#x>", data);
 return (s_data);
}
