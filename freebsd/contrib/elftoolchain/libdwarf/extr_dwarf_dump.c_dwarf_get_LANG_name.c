
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_LANG_name(unsigned lang, const char **s)
{

 assert(s != ((void*)0));

 switch (lang) {
 case 162:
  *s = "DW_LANG_C89"; break;
 case 164:
  *s = "DW_LANG_C"; break;
 case 167:
  *s = "DW_LANG_Ada83"; break;
 case 160:
  *s = "DW_LANG_C_plus_plus"; break;
 case 156:
  *s = "DW_LANG_Cobol74"; break;
 case 155:
  *s = "DW_LANG_Cobol85"; break;
 case 150:
  *s = "DW_LANG_Fortran77"; break;
 case 149:
  *s = "DW_LANG_Fortran90"; break;
 case 135:
  *s = "DW_LANG_Pascal83"; break;
 case 142:
  *s = "DW_LANG_Modula2"; break;
 case 145:
  *s = "DW_LANG_Java"; break;
 case 161:
  *s = "DW_LANG_C99"; break;
 case 166:
  *s = "DW_LANG_Ada95"; break;
 case 148:
  *s = "DW_LANG_Fortran95"; break;
 case 136:
  *s = "DW_LANG_PLI"; break;
 case 139:
  *s = "DW_LANG_ObjC"; break;
 case 138:
  *s = "DW_LANG_ObjC_plus_plus"; break;
 case 130:
  *s = "DW_LANG_UPC"; break;
 case 154:
  *s = "DW_LANG_D"; break;
 case 134:
  *s = "DW_LANG_Python"; break;
 case 137:
  *s = "DW_LANG_OpenCL"; break;
 case 147:
  *s = "DW_LANG_Go"; break;
 case 141:
  *s = "DW_LANG_Modula3"; break;
 case 146:
  *s = "DW_LANG_Haskell"; break;
 case 159:
  *s = "DW_LANG_C_plus_plus_03"; break;
 case 158:
  *s = "DW_LANG_C_plus_plus_11"; break;
 case 140:
  *s = "DW_LANG_OCaml"; break;
 case 132:
  *s = "DW_LANG_Rust"; break;
 case 163:
  *s = "DW_LANG_C11"; break;
 case 131:
  *s = "DW_LANG_Swift"; break;
 case 144:
  *s = "DW_LANG_Julia"; break;
 case 153:
  *s = "DW_LANG_Dylan"; break;
 case 157:
  *s = "DW_LANG_C_plus_plus_14"; break;
 case 152:
  *s = "DW_LANG_Fortran03"; break;
 case 151:
  *s = "DW_LANG_Fortran08"; break;
 case 133:
  *s = "DW_LANG_RenderScript"; break;
 case 165:
  *s = "DW_LANG_BLISS"; break;
 case 128:
  *s = "DW_LANG_lo_user"; break;
 case 143:
  *s = "DW_LANG_Mips_Assembler"; break;
 case 129:
  *s = "DW_LANG_hi_user"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
