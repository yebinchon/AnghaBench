
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int append_to_statement_list (int ,int *) ;
 int gimplify_stmt (int *) ;

void
gimplify_and_add (tree t, tree *list_p)
{
  gimplify_stmt (&t);
  append_to_statement_list (t, list_p);
}
