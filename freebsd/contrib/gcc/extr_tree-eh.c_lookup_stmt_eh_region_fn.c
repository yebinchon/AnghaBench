
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct throw_stmt_node {int region_nr; int stmt; } ;
struct function {int dummy; } ;


 int get_eh_throw_stmt_table (struct function*) ;
 scalar_t__ htab_find (int ,struct throw_stmt_node*) ;

int
lookup_stmt_eh_region_fn (struct function *ifun, tree t)
{
  struct throw_stmt_node *p, n;

  if (!get_eh_throw_stmt_table (ifun))
    return -2;

  n.stmt = t;
  p = (struct throw_stmt_node *) htab_find (get_eh_throw_stmt_table (ifun),
                                            &n);

  return (p ? p->region_nr : -1);
}
