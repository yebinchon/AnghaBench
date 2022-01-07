
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
typedef TYPE_1__ cli_out_data ;


 int fputc_filtered (char,int ) ;
 TYPE_1__* ui_out_data (int ) ;
 int uiout ;

__attribute__((used)) static void
field_separator (void)
{
  cli_out_data *data = ui_out_data (uiout);
  fputc_filtered (' ', data->stream);
}
