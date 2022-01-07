
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int longname; int shortname; } ;


 TYPE_1__ current_cp_abi ;
 int ui_out_field_string (int ,char*,int ) ;
 int ui_out_text (int ,char*) ;
 int uiout ;

__attribute__((used)) static void
show_cp_abi_cmd (char *args, int from_tty)
{
  ui_out_text (uiout, "The currently selected C++ ABI is \"");

  ui_out_field_string (uiout, "cp-abi", current_cp_abi.shortname);
  ui_out_text (uiout, "\" (");
  ui_out_field_string (uiout, "longname", current_cp_abi.longname);
  ui_out_text (uiout, ").\n");
}
