
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int htab_t ;


 int htab_create (int,int ,int ,int *) ;
 int htab_delete (int ) ;
 int htab_eq_pointer ;
 int htab_hash_pointer ;
 int verify_stmt_tree_r ;
 int walk_tree (int *,int ,int *,int *) ;

void
verify_stmt_tree (tree t)
{
  htab_t statements;
  statements = htab_create (37, htab_hash_pointer, htab_eq_pointer, ((void*)0));
  walk_tree (&t, verify_stmt_tree_r, &statements, ((void*)0));
  htab_delete (statements);
}
