
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SHT_IA_64_LOPSREG ;


 char const* get_osabi_name (unsigned int) ;

__attribute__((used)) static const char *
get_ia64_section_type_name (unsigned int sh_type)
{

  if ((sh_type & 0xFF000000) == SHT_IA_64_LOPSREG)
    return get_osabi_name ((sh_type & 0x00FF0000) >> 16);

  switch (sh_type)
    {
    case 130: return "IA_64_EXT";
    case 128: return "IA_64_UNWIND";
    case 129: return "IA_64_PRIORITY_INIT";
    default:
      break;
    }
  return ((void*)0);
}
