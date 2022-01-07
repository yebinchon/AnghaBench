
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ pretty_printer ;
struct TYPE_5__ {int obstack; } ;


 int obstack_1grow (int ,char) ;
 char const* pp_formatted_text_data (TYPE_2__*) ;

const char *
pp_base_formatted_text (pretty_printer *pp)
{
  obstack_1grow (pp->buffer->obstack, '\0');
  return pp_formatted_text_data (pp);
}
