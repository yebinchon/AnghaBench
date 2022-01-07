
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {int suppress_output; } ;
typedef TYPE_1__ cli_out_data ;


 int gdb_assert (int) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
cli_table_begin (struct ui_out *uiout, int nbrofcols,
   int nr_rows,
   const char *tblid)
{
  cli_out_data *data = ui_out_data (uiout);
  if (nr_rows == 0)
    data->suppress_output = 1;
  else


    gdb_assert (data->suppress_output == 0);
}
