
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static char *
get_FORM_name (unsigned long form)
{
  switch (form)
    {
    case 149: return "DW_FORM_addr";
    case 146: return "DW_FORM_block2";
    case 145: return "DW_FORM_block4";
    case 143: return "DW_FORM_data2";
    case 142: return "DW_FORM_data4";
    case 141: return "DW_FORM_data8";
    case 130: return "DW_FORM_string";
    case 148: return "DW_FORM_block";
    case 147: return "DW_FORM_block1";
    case 144: return "DW_FORM_data1";
    case 140: return "DW_FORM_flag";
    case 131: return "DW_FORM_sdata";
    case 129: return "DW_FORM_strp";
    case 128: return "DW_FORM_udata";
    case 133: return "DW_FORM_ref_addr";
    case 137: return "DW_FORM_ref1";
    case 136: return "DW_FORM_ref2";
    case 135: return "DW_FORM_ref4";
    case 134: return "DW_FORM_ref8";
    case 132: return "DW_FORM_ref_udata";
    case 138: return "DW_FORM_indirect";
    case 139: return "DW_FORM_flag_present";
    default:
      {
 static char buffer[100];

 snprintf (buffer, sizeof (buffer), _("Unknown FORM value: %lx"), form);
 return buffer;
      }
    }
}
