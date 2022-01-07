
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
dwarf_type_encoding_name (unsigned enc)
{
  switch (enc)
    {
    case 136:
      return "DW_ATE_address";
    case 135:
      return "DW_ATE_boolean";
    case 134:
      return "DW_ATE_complex_float";
    case 133:
      return "DW_ATE_float";
    case 131:
      return "DW_ATE_signed";
    case 130:
      return "DW_ATE_signed_char";
    case 129:
      return "DW_ATE_unsigned";
    case 128:
      return "DW_ATE_unsigned_char";
    case 132:
      return "DW_ATE_imaginary_float";
    default:
      return "DW_ATE_<unknown>";
    }
}
