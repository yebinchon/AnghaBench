
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef scalar_t__ tree ;
struct sra_elt {int dummy; } ;


 int find_new_referenced_vars (int ) ;
 int generate_element_init_1 (struct sra_elt*,scalar_t__,scalar_t__*) ;
 int pop_gimplify_context (int *) ;
 int push_gimplify_context () ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (scalar_t__) ;
 int tsi_stmt_ptr (int ) ;

__attribute__((used)) static bool
generate_element_init (struct sra_elt *elt, tree init, tree *list_p)
{
  bool ret;

  push_gimplify_context ();
  ret = generate_element_init_1 (elt, init, list_p);
  pop_gimplify_context (((void*)0));


  if (ret && *list_p)
    {
      tree_stmt_iterator i;

      for (i = tsi_start (*list_p); !tsi_end_p (i); tsi_next (&i))
 find_new_referenced_vars (tsi_stmt_ptr (i));
    }

  return ret;
}
