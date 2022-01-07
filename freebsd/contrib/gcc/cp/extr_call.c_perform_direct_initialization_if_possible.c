
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ bad_p; } ;
typedef TYPE_1__ conversion ;


 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ build_cplus_new (scalar_t__,scalar_t__) ;
 scalar_t__ build_special_member_call (scalar_t__,int ,int ,scalar_t__,int ) ;
 int build_tree_list (scalar_t__,scalar_t__) ;
 int complete_ctor_identifier ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 scalar_t__ convert_like_real (TYPE_1__*,scalar_t__,scalar_t__,int ,int ,int,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_operand_p (scalar_t__) ;
 TYPE_1__* implicit_conversion (scalar_t__,int ,scalar_t__,int,int ) ;
 int obstack_free (int *,void*) ;

tree
perform_direct_initialization_if_possible (tree type,
        tree expr,
        bool c_cast_p)
{
  conversion *conv;
  void *p;

  if (type == error_mark_node || error_operand_p (expr))
    return error_mark_node;
  if (CLASS_TYPE_P (type))
    {
      expr = build_special_member_call (NULL_TREE, complete_ctor_identifier,
     build_tree_list (NULL_TREE, expr),
     type, LOOKUP_NORMAL);
      return build_cplus_new (type, expr);
    }


  p = conversion_obstack_alloc (0);

  conv = implicit_conversion (type, TREE_TYPE (expr), expr,
         c_cast_p,
         LOOKUP_NORMAL);
  if (!conv || conv->bad_p)
    expr = NULL_TREE;
  else
    expr = convert_like_real (conv, expr, NULL_TREE, 0, 0,
                                       0,
         c_cast_p);


  obstack_free (&conversion_obstack, p);

  return expr;
}
