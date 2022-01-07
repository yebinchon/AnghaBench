
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_LNS_name(unsigned lns, const char **s)
{

 assert(s != ((void*)0));

 switch (lns) {
 case 136:
  *s = "DW_LNS_copy"; break;
 case 138:
  *s = "DW_LNS_advance_pc"; break;
 case 139:
  *s = "DW_LNS_advance_line"; break;
 case 130:
  *s = "DW_LNS_set_file"; break;
 case 132:
  *s = "DW_LNS_set_column"; break;
 case 134:
  *s = "DW_LNS_negate_stmt"; break;
 case 133:
  *s = "DW_LNS_set_basic_block"; break;
 case 137:
  *s = "DW_LNS_const_add_pc"; break;
 case 135:
  *s = "DW_LNS_fixed_advance_pc"; break;
 case 128:
  *s = "DW_LNS_set_prologue_end"; break;
 case 131:
  *s = "DW_LNS_set_epilogue_begin"; break;
 case 129:
  *s = "DW_LNS_set_isa"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
