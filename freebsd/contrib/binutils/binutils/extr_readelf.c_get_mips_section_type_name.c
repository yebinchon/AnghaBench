
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_mips_section_type_name (unsigned int sh_type)
{
  switch (sh_type)
    {
    case 150: return "MIPS_LIBLIST";
    case 146: return "MIPS_MSYM";
    case 165: return "MIPS_CONFLICT";
    case 152: return "MIPS_GPTAB";
    case 132: return "MIPS_UCODE";
    case 163: return "MIPS_DEBUG";
    case 138: return "MIPS_REGINFO";
    case 143: return "MIPS_PACKAGE";
    case 142: return "MIPS_PACKSYM";
    case 137: return "MIPS_RELD";
    case 151: return "MIPS_IFACE";
    case 164: return "MIPS_CONTENT";
    case 145: return "MIPS_OPTIONS";
    case 135: return "MIPS_SHDR";
    case 153: return "MIPS_FDESC";
    case 154: return "MIPS_EXTSYM";
    case 158: return "MIPS_DENSE";
    case 141: return "MIPS_PDESC";
    case 147: return "MIPS_LOCSYM";
    case 166: return "MIPS_AUXSYM";
    case 144: return "MIPS_OPTSYM";
    case 148: return "MIPS_LOCSTR";
    case 149: return "MIPS_LINE";
    case 136: return "MIPS_RFDESC";
    case 159: return "MIPS_DELTASYM";
    case 160: return "MIPS_DELTAINST";
    case 162: return "MIPS_DELTACLASS";
    case 157: return "MIPS_DWARF";
    case 161: return "MIPS_DELTADECL";
    case 134: return "MIPS_SYMBOL_LIB";
    case 155: return "MIPS_EVENTS";
    case 133: return "MIPS_TRANSLATE";
    case 139: return "MIPS_PIXIE";
    case 130: return "MIPS_XLATE";
    case 129: return "MIPS_XLATE_DEBUG";
    case 131: return "MIPS_WHIRL";
    case 156: return "MIPS_EH_REGION";
    case 128: return "MIPS_XLATE_OLD";
    case 140: return "MIPS_PDR_EXCEPTION";
    default:
      break;
    }
  return ((void*)0);
}
