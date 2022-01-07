
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct builtin {int value; int len; int name; } ;
typedef int cpp_reader ;
struct TYPE_3__ {int directive_index; scalar_t__ is_directive; int flags; } ;
typedef TYPE_1__ cpp_hashnode ;


 int ARRAY_SIZE (struct builtin const*) ;
 int NODE_OPERATOR ;
 TYPE_1__* cpp_lookup (int *,int ,int ) ;
 struct builtin const* operator_array ;

__attribute__((used)) static void
mark_named_operators (cpp_reader *pfile)
{
  const struct builtin *b;

  for (b = operator_array;
       b < (operator_array + ARRAY_SIZE (operator_array));
       b++)
    {
      cpp_hashnode *hp = cpp_lookup (pfile, b->name, b->len);
      hp->flags |= NODE_OPERATOR;
      hp->is_directive = 0;
      hp->directive_index = b->value;
    }
}
