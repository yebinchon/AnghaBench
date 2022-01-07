
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wi ;
typedef int walk_tree_fn ;
typedef int tree ;
struct walk_stmt_info {int val_only; struct nesting_info* info; int callback; } ;
struct nesting_info {int dummy; } ;


 int memset (struct walk_stmt_info*,int ,int) ;
 int walk_stmts (struct walk_stmt_info*,int *) ;

__attribute__((used)) static void
walk_body (walk_tree_fn callback, struct nesting_info *info, tree *stmt_p)
{
  struct walk_stmt_info wi;

  memset (&wi, 0, sizeof (wi));
  wi.callback = callback;
  wi.info = info;
  wi.val_only = 1;

  walk_stmts (&wi, stmt_p);
}
