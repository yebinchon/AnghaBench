
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uchar ;
struct fun_macro {size_t* args; scalar_t__ argc; int const* offset; TYPE_5__* node; int buff; } ;
struct TYPE_10__ {int base; } ;
struct TYPE_13__ {TYPE_1__ out; } ;
typedef TYPE_4__ cpp_reader ;
struct TYPE_12__ {TYPE_2__* macro; } ;
struct TYPE_14__ {TYPE_3__ value; } ;
typedef TYPE_5__ cpp_hashnode ;
struct TYPE_11__ {int paramc; } ;


 scalar_t__ BUFF_FRONT (int ) ;
 int _cpp_get_buff (TYPE_4__*,unsigned int) ;
 int _cpp_release_buff (TYPE_4__*,int ) ;

__attribute__((used)) static void
maybe_start_funlike (cpp_reader *pfile, cpp_hashnode *node, const uchar *start, struct fun_macro *macro)
{
  unsigned int n = node->value.macro->paramc + 1;

  if (macro->buff)
    _cpp_release_buff (pfile, macro->buff);
  macro->buff = _cpp_get_buff (pfile, n * sizeof (size_t));
  macro->args = (size_t *) BUFF_FRONT (macro->buff);
  macro->node = node;
  macro->offset = start - pfile->out.base;
  macro->argc = 0;
}
