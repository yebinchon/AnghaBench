
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ pretty_printer ;
struct TYPE_4__ {int line_length; int obstack; } ;


 int obstack_grow (int ,char const*,int) ;

__attribute__((used)) static inline void
pp_append_r (pretty_printer *pp, const char *start, int length)
{
  obstack_grow (pp->buffer->obstack, start, length);
  pp->buffer->line_length += length;
}
