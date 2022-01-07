
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int output_count; char* separate_str; int output; } ;
struct TYPE_3__ {char* input_result; int separate_output; } ;


 char* DEFAULT_SEPARATE_STR ;




 int DLG_TRACE (char*) ;
 int FALSE ;
 int TRUE ;
 TYPE_2__ dialog_state ;
 TYPE_1__ dialog_vars ;
 int fflush (int ) ;
 int fputs (char*,int ) ;

__attribute__((used)) static int
show_result(int ret)
{
    bool either = FALSE;

    switch (ret) {
    case 128:
    case 131:
    case 130:
    case 129:
 if ((dialog_state.output_count > 1) && !dialog_vars.separate_output) {
     fputs((dialog_state.separate_str
     ? dialog_state.separate_str
     : DEFAULT_SEPARATE_STR),
    dialog_state.output);
     either = TRUE;
 }
 if (dialog_vars.input_result != 0
     && dialog_vars.input_result[0] != '\0') {
     fputs(dialog_vars.input_result, dialog_state.output);
     DLG_TRACE(("# input_result:\n%s\n", dialog_vars.input_result));
     either = TRUE;
 }
 if (either) {
     fflush(dialog_state.output);
 }
 break;
    }
    return ret;
}
