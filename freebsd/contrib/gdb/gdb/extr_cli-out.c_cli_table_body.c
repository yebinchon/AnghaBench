
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef TYPE_1__ cli_out_data ;


 int cli_text (struct ui_out*,char*) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
cli_table_body (struct ui_out *uiout)
{
  cli_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;

  cli_text (uiout, "\n");
}
