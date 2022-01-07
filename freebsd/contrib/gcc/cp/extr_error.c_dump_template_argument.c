
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TEMPLATE_DECL ;
 int TFF_CLASS_KEY_OR_ENUM ;
 int TFF_EXPR_IN_PARENS ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 int dump_expr (int ,int) ;
 int dump_type (int ,int) ;

__attribute__((used)) static void
dump_template_argument (tree arg, int flags)
{
  if (TYPE_P (arg) || TREE_CODE (arg) == TEMPLATE_DECL)
    dump_type (arg, flags & ~TFF_CLASS_KEY_OR_ENUM);
  else
    dump_expr (arg, (flags | TFF_EXPR_IN_PARENS) & ~TFF_CLASS_KEY_OR_ENUM);
}
