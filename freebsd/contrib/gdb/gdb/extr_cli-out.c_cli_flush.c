
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {int stream; } ;
typedef TYPE_1__ cli_out_data ;


 int gdb_flush (int ) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
cli_flush (struct ui_out *uiout)
{
  cli_out_data *data = ui_out_data (uiout);
  gdb_flush (data->stream);
}
