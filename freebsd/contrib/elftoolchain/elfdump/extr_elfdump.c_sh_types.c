
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unknown_buf ;
typedef int uint64_t ;
 int snprintf (char*,int,char*,unsigned long long) ;

__attribute__((used)) static const char *
sh_types(uint64_t mach, uint64_t sht) {
 static char unknown_buf[64];

 if (sht < 0x60000000) {
  switch (sht) {
  case 140: return "SHT_NULL";
  case 138: return "SHT_PROGBITS";
  case 129: return "SHT_SYMTAB";
  case 134: return "SHT_STRTAB";
  case 136: return "SHT_RELA";
  case 147: return "SHT_HASH";
  case 152: return "SHT_DYNAMIC";
  case 141: return "SHT_NOTE";
  case 142: return "SHT_NOBITS";
  case 137: return "SHT_REL";
  case 135: return "SHT_SHLIB";
  case 151: return "SHT_DYNSYM";
  case 146: return "SHT_INIT_ARRAY";
  case 150: return "SHT_FINI_ARRAY";
  case 139: return "SHT_PREINIT_ARRAY";
  case 148: return "SHT_GROUP";
  case 128: return "SHT_SYMTAB_SHNDX";
  }
 } else if (sht < 0x70000000) {

  switch (sht) {
  case 0x6ffffff0: return "XXX:VERSYM";
  case 133: return "SHT_SUNW_dof";
  case 149: return "SHT_GNU_HASH";
  case 0x6ffffff7: return "SHT_GNU_LIBLIST";
  case 0x6ffffffc: return "XXX:VERDEF";
  case 132: return "SHT_SUNW(GNU)_verdef";
  case 131: return "SHT_SUNW(GNU)_verneed";
  case 130: return "SHT_SUNW(GNU)_versym";
  }
 } else if (sht < 0x80000000) {

  switch (mach) {
  case 160:
   switch (sht) {
   case 155: return "SHT_ARM_EXIDX";
   case 153: return "SHT_ARM_PREEMPTMAP";
   case 157: return "SHT_ARM_ATTRIBUTES";
   case 156:
       return "SHT_ARM_DEBUGOVERLAY";
   case 154:
       return "SHT_ARM_OVERLAYSECTION";
   }
   break;
  case 159:
   switch (sht) {
   case 0x70000000: return "SHT_IA_64_EXT";
   case 0x70000001: return "SHT_IA_64_UNWIND";
   }
   break;
  case 158:
   switch (sht) {
   case 143: return "SHT_MIPS_REGINFO";
   case 144: return "SHT_MIPS_OPTIONS";
   case 145: return "SHT_MIPS_ABIFLAGS";
   }
   break;
  }
  switch (sht) {
  case 0x7ffffffd: return "XXX:AUXILIARY";
  case 0x7fffffff: return "XXX:FILTER";
  }
 }


 snprintf(unknown_buf, sizeof(unknown_buf),
  "<unknown: %#llx>", (unsigned long long)sht);
 return (unknown_buf);
}
