
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ pretty_printer ;
struct TYPE_4__ {scalar_t__ line_length; int obstack; } ;


 int obstack_base (int ) ;
 int obstack_free (int ,int ) ;

void
pp_base_clear_output_area (pretty_printer *pp)
{
  obstack_free (pp->buffer->obstack, obstack_base (pp->buffer->obstack));
  pp->buffer->line_length = 0;
}
