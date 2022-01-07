
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ pretty_printer ;
struct TYPE_6__ {int stream; } ;


 int fputs (char const*,int ) ;
 int pp_clear_output_area (TYPE_2__*) ;
 char* pp_formatted_text (TYPE_2__*) ;

void
pp_write_text_to_stream (pretty_printer *pp)
{
  const char *text = pp_formatted_text (pp);
  fputs (text, pp->buffer->stream);
  pp_clear_output_area (pp);
}
