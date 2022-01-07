
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int COND_EXPR ;
 scalar_t__ ELSE_CLAUSE (scalar_t__) ;
 scalar_t__ IF_COND (scalar_t__) ;
 scalar_t__ THEN_CLAUSE (scalar_t__) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ build3 (int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_empty_stmt () ;
 scalar_t__ integer_nonzerop (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 int void_type_node ;

__attribute__((used)) static void
gimplify_if_stmt (tree *stmt_p)
{
  tree stmt, cond, then_, else_;

  stmt = *stmt_p;
  cond = IF_COND (stmt);
  then_ = THEN_CLAUSE (stmt);
  else_ = ELSE_CLAUSE (stmt);

  if (!then_)
    then_ = build_empty_stmt ();
  if (!else_)
    else_ = build_empty_stmt ();

  if (integer_nonzerop (cond) && !TREE_SIDE_EFFECTS (else_))
    stmt = then_;
  else if (integer_zerop (cond) && !TREE_SIDE_EFFECTS (then_))
    stmt = else_;
  else
    stmt = build3 (COND_EXPR, void_type_node, cond, then_, else_);
  *stmt_p = stmt;
}
