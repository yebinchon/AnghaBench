
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* context; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_8__ {struct TYPE_8__* prev; scalar_t__ buff; TYPE_1__* macro; } ;
typedef TYPE_3__ cpp_context ;
struct TYPE_6__ {int flags; } ;


 int NODE_DISABLED ;
 int _cpp_release_buff (TYPE_2__*,scalar_t__) ;

void
_cpp_pop_context (cpp_reader *pfile)
{
  cpp_context *context = pfile->context;

  if (context->macro)
    context->macro->flags &= ~NODE_DISABLED;

  if (context->buff)
    _cpp_release_buff (pfile, context->buff);

  pfile->context = context->prev;
}
