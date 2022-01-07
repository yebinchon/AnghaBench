
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct z_candidate {TYPE_1__* second_conv; } ;
struct TYPE_2__ {scalar_t__ kind; } ;


 int NULL_TREE ;
 struct z_candidate* build_user_type_conversion_1 (int ,int ,int) ;
 scalar_t__ ck_ambig ;
 int convert_from_reference (int ) ;
 int convert_like (TYPE_1__*,int ) ;
 int error_mark_node ;

tree
build_user_type_conversion (tree totype, tree expr, int flags)
{
  struct z_candidate *cand
    = build_user_type_conversion_1 (totype, expr, flags);

  if (cand)
    {
      if (cand->second_conv->kind == ck_ambig)
 return error_mark_node;
      expr = convert_like (cand->second_conv, expr);
      return convert_from_reference (expr);
    }
  return NULL_TREE;
}
