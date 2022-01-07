
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out_data {struct ui_file* original_stream; struct ui_file* stream; } ;
struct ui_out {int dummy; } ;
struct ui_file {int dummy; } ;


 struct ui_out_data* ui_out_data (struct ui_out*) ;

int
cli_redirect (struct ui_out *uiout, struct ui_file *outstream)
{
  struct ui_out_data *data = ui_out_data (uiout);
  if (outstream != ((void*)0))
    {
      data->original_stream = data->stream;
      data->stream = outstream;
    }
  else if (data->original_stream != ((void*)0))
    {
      data->stream = data->original_stream;
      data->original_stream = ((void*)0);
    }

  return 0;
}
