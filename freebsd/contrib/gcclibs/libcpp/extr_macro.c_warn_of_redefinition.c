
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_10__ {int * tokens; } ;
struct TYPE_11__ {unsigned int paramc; scalar_t__ fun_like; scalar_t__ variadic; scalar_t__* params; unsigned int count; TYPE_2__ exp; } ;
typedef TYPE_3__ cpp_macro ;
struct TYPE_9__ {TYPE_3__* macro; } ;
struct TYPE_12__ {int flags; TYPE_1__ value; } ;
typedef TYPE_4__ cpp_hashnode ;


 scalar_t__ CPP_OPTION (int *,int ) ;
 int NODE_WARN ;
 int _cpp_equiv_tokens (int *,int *) ;
 int _cpp_expansions_different_trad (TYPE_3__ const*,TYPE_3__ const*) ;
 int traditional ;

__attribute__((used)) static bool
warn_of_redefinition (cpp_reader *pfile, const cpp_hashnode *node,
        const cpp_macro *macro2)
{
  const cpp_macro *macro1;
  unsigned int i;


  if (node->flags & NODE_WARN)
    return 1;



  macro1 = node->value.macro;



  if (macro1->paramc != macro2->paramc
      || macro1->fun_like != macro2->fun_like
      || macro1->variadic != macro2->variadic)
    return 1;


  for (i = 0; i < macro1->paramc; i++)
    if (macro1->params[i] != macro2->params[i])
      return 1;


  if (CPP_OPTION (pfile, traditional))
    return _cpp_expansions_different_trad (macro1, macro2);

  if (macro1->count != macro2->count)
    return 1;

  for (i = 0; i < macro1->count; i++)
    if (!_cpp_equiv_tokens (&macro1->exp.tokens[i], &macro2->exp.tokens[i]))
      return 1;

  return 0;
}
