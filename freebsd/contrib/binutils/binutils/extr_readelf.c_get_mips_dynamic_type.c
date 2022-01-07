
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_mips_dynamic_type (unsigned long type)
{
  switch (type)
    {
    case 132: return "MIPS_RLD_VERSION";
    case 129: return "MIPS_TIME_STAMP";
    case 148: return "MIPS_ICHECKSUM";
    case 145: return "MIPS_IVERSION";
    case 153: return "MIPS_FLAGS";
    case 169: return "MIPS_BASE_ADDRESS";
    case 139: return "MIPS_MSYM";
    case 167: return "MIPS_CONFLICT";
    case 144: return "MIPS_LIBLIST";
    case 140: return "MIPS_LOCAL_GOTNO";
    case 166: return "MIPS_CONFLICTNO";
    case 143: return "MIPS_LIBLISTNO";
    case 130: return "MIPS_SYMTABNO";
    case 128: return "MIPS_UNREFEXTNO";
    case 152: return "MIPS_GOTSYM";
    case 149: return "MIPS_HIPAGENO";
    case 134: return "MIPS_RLD_MAP";
    case 164: return "MIPS_DELTA_CLASS";
    case 161: return "MIPS_DELTA_CLASS_NO";
    case 160: return "MIPS_DELTA_INSTANCE";
    case 159: return "MIPS_DELTA_INSTANCE_NO";
    case 158: return "MIPS_DELTA_RELOC";
    case 157: return "MIPS_DELTA_RELOC_NO";
    case 156: return "MIPS_DELTA_SYM";
    case 155: return "MIPS_DELTA_SYM_NO";
    case 163: return "MIPS_DELTA_CLASSSYM";
    case 162: return "MIPS_DELTA_CLASSSYM_NO";
    case 165: return "MIPS_CXX_FLAGS";
    case 136: return "MIPS_PIXIE_INIT";
    case 131: return "MIPS_SYMBOL_LIB";
    case 142: return "MIPS_LOCALPAGE_GOTIDX";
    case 141: return "MIPS_LOCAL_GOTIDX";
    case 150: return "MIPS_HIDDEN_GOTIDX";
    case 135: return "MIPS_PROTECTED_GOTIDX";
    case 138: return "MIPS_OPTIONS";
    case 147: return "MIPS_INTERFACE";
    case 154: return "MIPS_DYNSTR_ALIGN";
    case 146: return "MIPS_INTERFACE_SIZE";
    case 133: return "MIPS_RLD_TEXT_RESOLVE_ADDR";
    case 137: return "MIPS_PERF_SUFFIX";
    case 168: return "MIPS_COMPACT_SIZE";
    case 151: return "MIPS_GP_VALUE";
    case 170: return "MIPS_AUX_DYNAMIC";
    default:
      return ((void*)0);
    }
}
