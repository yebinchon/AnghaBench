
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_type ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_phdr_type_str(unsigned int type)
{
 static char s_type[32];

 switch (type) {
 case 134: return "PT_NULL";
 case 136: return "PT_LOAD";
 case 141: return "PT_DYNAMIC";
 case 137: return "PT_INTERP";
 case 135: return "PT_NOTE";
 case 129: return "PT_SHLIB";
 case 130: return "PT_PHDR";
 case 128: return "PT_TLS";
 case 140: return "PT_GNU_EH_FRAME";
 case 138: return "PT_GNU_STACK";
 case 139: return "PT_GNU_RELRO";
 case 132: return "PT_OPENBSD_RANDOMIZE";
 case 131: return "PT_OPENBSD_WXNEEDED";
 case 133: return "PT_OPENBSD_BOOTDATA";
 }
 snprintf(s_type, sizeof(s_type), "<unknown: %#x>", type);
 return (s_type);
}
