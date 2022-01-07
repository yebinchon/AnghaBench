
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum Dwarf_Form_Class { ____Placeholder_Dwarf_Form_Class } Dwarf_Form_Class ;
typedef int Dwarf_Half ;
 int DW_FORM_CLASS_ADDRESS ;
 int DW_FORM_CLASS_BLOCK ;
 int DW_FORM_CLASS_CONSTANT ;
 int DW_FORM_CLASS_EXPRLOC ;
 int DW_FORM_CLASS_FLAG ;
 int DW_FORM_CLASS_LINEPTR ;
 int DW_FORM_CLASS_LOCLISTPTR ;
 int DW_FORM_CLASS_MACPTR ;
 int DW_FORM_CLASS_RANGELISTPTR ;
 int DW_FORM_CLASS_REFERENCE ;
 int DW_FORM_CLASS_STRING ;
 int DW_FORM_CLASS_UNKNOWN ;
enum Dwarf_Form_Class
dwarf_get_form_class(Dwarf_Half dwversion, Dwarf_Half attr,
    Dwarf_Half offset_size, Dwarf_Half form)
{

 switch (form) {
 case 151:
  return (DW_FORM_CLASS_ADDRESS);
 case 150:
 case 149:
 case 148:
 case 147:
  return (DW_FORM_CLASS_BLOCK);
 case 130:
 case 129:
  return (DW_FORM_CLASS_STRING);
 case 141:
 case 140:
  return (DW_FORM_CLASS_FLAG);
 case 135:
 case 134:
 case 133:
 case 139:
 case 138:
 case 137:
 case 136:
  return (DW_FORM_CLASS_REFERENCE);
 case 142:
  return (DW_FORM_CLASS_EXPRLOC);
 case 146:
 case 145:
 case 132:
 case 128:
  return (DW_FORM_CLASS_CONSTANT);
 case 144:
 case 143:
  if (dwversion > 3)
   return (DW_FORM_CLASS_CONSTANT);
  if (form == 144 && offset_size != 4)
   return (DW_FORM_CLASS_CONSTANT);
  if (form == 143 && offset_size != 8)
   return (DW_FORM_CLASS_CONSTANT);

 case 131:
  switch (attr) {
  case 162:
  case 154:
  case 159:
  case 164:
  case 163:
  case 158:
  case 156:
  case 153:
  case 152:
   return (DW_FORM_CLASS_LOCLISTPTR);
  case 155:
   return (DW_FORM_CLASS_LINEPTR);
  case 157:
  case 160:
   return (DW_FORM_CLASS_RANGELISTPTR);
  case 161:
   return (DW_FORM_CLASS_MACPTR);
  default:
   if (form == 144 || form == 143)
    return (DW_FORM_CLASS_CONSTANT);
   else
    return (DW_FORM_CLASS_UNKNOWN);
  }
 default:
  return (DW_FORM_CLASS_UNKNOWN);
 }
}
