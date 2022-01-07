
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {int stream; scalar_t__ suppress_output; } ;
typedef TYPE_1__ cli_out_data ;


 int fputs_filtered (char const*,int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
cli_text (struct ui_out *uiout, const char *string)
{
  cli_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  fputs_filtered (string, data->stream);
}
