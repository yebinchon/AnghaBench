
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct obstack {int dummy; } ;
struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ pretty_printer ;
struct TYPE_4__ {struct obstack* obstack; } ;


 scalar_t__ obstack_base (struct obstack*) ;
 scalar_t__ obstack_next_free (struct obstack*) ;

const char *
pp_base_last_position_in_text (const pretty_printer *pp)
{
  const char *p = ((void*)0);
  struct obstack *text = pp->buffer->obstack;

  if (obstack_base (text) != obstack_next_free (text))
    p = ((const char *) obstack_next_free (text)) - 1;
  return p;
}
