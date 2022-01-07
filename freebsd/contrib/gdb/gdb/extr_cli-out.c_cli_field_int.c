
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;
struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef TYPE_1__ cli_out_data ;


 int cli_field_string (struct ui_out*,int,int,int,char const*,char*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
cli_field_int (struct ui_out *uiout, int fldno, int width,
        enum ui_align alignment,
        const char *fldname, int value)
{
  char buffer[20];

  cli_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  sprintf (buffer, "%d", value);
  cli_field_string (uiout, fldno, width, alignment, fldname, buffer);
}
