
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
get_parisc_section_type_name (unsigned int sh_type)
{
  switch (sh_type)
    {
    case 131: return "PARISC_EXT";
    case 128: return "PARISC_UNWIND";
    case 132: return "PARISC_DOC";
    case 134: return "PARISC_ANNOT";
    case 129: return "PARISC_SYMEXTN";
    case 130: return "PARISC_STUBS";
    case 133: return "PARISC_DLKM";
    default:
      break;
    }
  return ((void*)0);
}
