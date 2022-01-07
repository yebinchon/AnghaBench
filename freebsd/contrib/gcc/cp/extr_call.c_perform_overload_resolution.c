
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct z_candidate {int dummy; } ;


 scalar_t__ FUNCTION_DECL ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVERLOAD ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int add_candidates (scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int ,struct z_candidate**) ;
 int gcc_assert (int) ;
 int pedantic ;
 struct z_candidate* splice_viable (struct z_candidate*,int ,int*) ;
 struct z_candidate* tourney (struct z_candidate*) ;

__attribute__((used)) static struct z_candidate *
perform_overload_resolution (tree fn,
        tree args,
        struct z_candidate **candidates,
        bool *any_viable_p)
{
  struct z_candidate *cand;
  tree explicit_targs = NULL_TREE;
  int template_only = 0;

  *candidates = ((void*)0);
  *any_viable_p = 1;


  gcc_assert (TREE_CODE (fn) == FUNCTION_DECL
       || TREE_CODE (fn) == TEMPLATE_DECL
       || TREE_CODE (fn) == OVERLOAD
       || TREE_CODE (fn) == TEMPLATE_ID_EXPR);
  gcc_assert (!args || TREE_CODE (args) == TREE_LIST);

  if (TREE_CODE (fn) == TEMPLATE_ID_EXPR)
    {
      explicit_targs = TREE_OPERAND (fn, 1);
      fn = TREE_OPERAND (fn, 0);
      template_only = 1;
    }


  add_candidates (fn, args, explicit_targs, template_only,
                        NULL_TREE,
                    NULL_TREE,
    LOOKUP_NORMAL,
    candidates);

  *candidates = splice_viable (*candidates, pedantic, any_viable_p);
  if (!*any_viable_p)
    return ((void*)0);

  cand = tourney (*candidates);
  return cand;
}
