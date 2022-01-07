
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_EH_name(unsigned eh, const char **s)
{

 assert(s != ((void*)0));

 switch (eh) {
 case 142:
  *s = "DW_EH_PE_absptr"; break;
 case 128:
  *s = "DW_EH_PE_uleb128"; break;
 case 131:
  *s = "DW_EH_PE_udata2"; break;
 case 130:
  *s = "DW_EH_PE_udata4"; break;
 case 129:
  *s = "DW_EH_PE_udata8"; break;
 case 133:
  *s = "DW_EH_PE_sleb128"; break;
 case 136:
  *s = "DW_EH_PE_sdata2"; break;
 case 135:
  *s = "DW_EH_PE_sdata4"; break;
 case 134:
  *s = "DW_EH_PE_sdata8"; break;
 case 137:
  *s = "DW_EH_PE_pcrel"; break;
 case 132:
  *s = "DW_EH_PE_textrel"; break;
 case 140:
  *s = "DW_EH_PE_datarel"; break;
 case 139:
  *s = "DW_EH_PE_funcrel"; break;
 case 141:
  *s = "DW_EH_PE_aligned"; break;
 case 138:
  *s = "DW_EH_PE_omit"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
