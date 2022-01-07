
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_dtype ;
 unsigned int DT_HIPROC ;




 unsigned int DT_LOPROC ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
dt_type(unsigned int mach, unsigned int dtype)
{
 static char s_dtype[32];

 switch (dtype) {
 case 176: return "NULL";
 case 177: return "NEEDED";
 case 171: return "PLTRELSZ";
 case 175: return "PLTGOT";
 case 231: return "HASH";
 case 154: return "STRTAB";
 case 143: return "SYMTAB";
 case 166: return "RELA";
 case 163: return "RELASZ";
 case 164: return "RELAENT";
 case 155: return "STRSZ";
 case 147: return "SYMENT";
 case 230: return "INIT";
 case 242: return "FINI";
 case 157: return "SONAME";
 case 159: return "RPATH";
 case 148: return "SYMBOLIC";
 case 167: return "REL";
 case 160: return "RELSZ";
 case 161: return "RELENT";
 case 172: return "PLTREL";
 case 246: return "DEBUG";
 case 142: return "TEXTREL";
 case 227: return "JMPREL";
 case 249: return "BIND_NOW";
 case 229: return "INIT_ARRAY";
 case 241: return "FINI_ARRAY";
 case 228: return "INIT_ARRAYSZ";
 case 240: return "FINI_ARRAYSZ";
 case 158: return "RUNPATH";
 case 239: return "FLAGS";
 case 169: return "PREINIT_ARRAY";
 case 168: return "PREINIT_ARRAYSZ";
 case 226: return "MAXPOSTAGS";
 case 152: return "SUNW_AUXILIARY";
 case 149: return "SUNW_RTLDINF";
 case 150: return "SUNW_FILTER";
 case 151: return "SUNW_CAP";
 case 153: return "SUNW_ASLR";
 case 248: return "CHECKSUM";
 case 173: return "PLTPADSZ";
 case 180: return "MOVEENT";
 case 179: return "MOVESZ";
 case 244: return "FEATURE";
 case 170: return "POSFLAG_1";
 case 144: return "SYMINSZ";
 case 146: return "SYMINENT";
 case 235: return "GNU_HASH";
 case 140: return "DT_TLSDESC_PLT";
 case 141: return "DT_TLSDESC_GOT";
 case 237: return "GNU_CONFLICT";
 case 234: return "GNU_LIBLIST";
 case 247: return "CONFIG";
 case 245: return "DEPAUDIT";
 case 251: return "AUDIT";
 case 174: return "PLTPAD";
 case 178: return "MOVETAB";
 case 145: return "SYMINFO";
 case 134: return "VERSYM";
 case 165: return "RELACOUNT";
 case 162: return "RELCOUNT";
 case 238: return "FLAGS_1";
 case 138: return "VERDEF";
 case 137: return "VERDEFNUM";
 case 136: return "VERNEED";
 case 135: return "VERNEEDNUM";
 case 250: return "AUXILIARY";
 case 139: return "USED";
 case 243: return "FILTER";
 case 232: return "GNU_PRELINKED";
 case 236: return "GNU_CONFLICTSZ";
 case 233: return "GNU_LIBLISTSZ";
 }

 if (dtype >= DT_LOPROC && dtype <= DT_HIPROC) {
  switch (mach) {
  case 133:
   switch (dtype) {
   case 252:
    return "ARM_SYMTABSZ";
   default:
    break;
   }
   break;
  case 132:
  case 131:
   switch (dtype) {
   case 186:
    return "MIPS_RLD_VERSION";
   case 182:
    return "MIPS_TIME_STAMP";
   case 203:
    return "MIPS_ICHECKSUM";
   case 200:
    return "MIPS_IVERSION";
   case 208:
    return "MIPS_FLAGS";
   case 224:
    return "MIPS_BASE_ADDRESS";
   case 222:
    return "MIPS_CONFLICT";
   case 199:
    return "MIPS_LIBLIST";
   case 195:
    return "MIPS_LOCAL_GOTNO";
   case 221:
    return "MIPS_CONFLICTNO";
   case 198:
    return "MIPS_LIBLISTNO";
   case 183:
    return "MIPS_SYMTABNO";
   case 181:
    return "MIPS_UNREFEXTNO";
   case 207:
    return "MIPS_GOTSYM";
   case 204:
    return "MIPS_HIPAGENO";
   case 189:
    return "MIPS_RLD_MAP";
   case 219:
    return "MIPS_DELTA_CLASS";
   case 216:
    return "MIPS_DELTA_CLASS_NO";
   case 215:
    return "MIPS_DELTA_INSTANCE";
   case 214:
    return "MIPS_DELTA_INSTANCE_NO";
   case 213:
    return "MIPS_DELTA_RELOC";
   case 212:
    return "MIPS_DELTA_RELOC_NO";
   case 211:
    return "MIPS_DELTA_SYM";
   case 210:
    return "MIPS_DELTA_SYM_NO";
   case 218:
    return "MIPS_DELTA_CLASSSYM";
   case 217:
    return "MIPS_DELTA_CLASSSYM_NO";
   case 220:
    return "MIPS_CXX_FLAGS";
   case 192:
    return "MIPS_PIXIE_INIT";
   case 184:
    return "MIPS_SYMBOL_LIB";
   case 197:
    return "MIPS_LOCALPAGE_GOTIDX";
   case 196:
    return "MIPS_LOCAL_GOTIDX";
   case 205:
    return "MIPS_HIDDEN_GOTIDX";
   case 190:
    return "MIPS_PROTECTED_GOTIDX";
   case 194:
    return "MIPS_OPTIONS";
   case 202:
    return "MIPS_INTERFACE";
   case 209:
    return "MIPS_DYNSTR_ALIGN";
   case 201:
    return "MIPS_INTERFACE_SIZE";
   case 187:
    return "MIPS_RLD_TEXT_RESOLVE_ADDR";
   case 193:
    return "MIPS_PERF_SUFFIX";
   case 223:
    return "MIPS_COMPACT_SIZE";
   case 206:
    return "MIPS_GP_VALUE";
   case 225:
    return "MIPS_AUX_DYNAMIC";
   case 191:
    return "MIPS_PLTGOT";
   case 188:
    return "MIPS_RLD_OBJ_UPDATE";
   case 185:
    return "MIPS_RWPLT";
   default:
    break;
   }
   break;
  case 130:
  case 129:
  case 128:
   switch (dtype) {
   case 156:
    return "DT_SPARC_REGISTER";
   default:
    break;
   }
   break;
  default:
   break;
  }
 }

 snprintf(s_dtype, sizeof(s_dtype), "<unknown: %#x>", dtype);
 return (s_dtype);
}
