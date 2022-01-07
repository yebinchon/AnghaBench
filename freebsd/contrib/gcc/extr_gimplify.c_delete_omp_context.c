
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gimplify_omp_ctx {int privatized_types; int variables; } ;


 int XDELETE (struct gimplify_omp_ctx*) ;
 int pointer_set_destroy (int ) ;
 int splay_tree_delete (int ) ;

__attribute__((used)) static void
delete_omp_context (struct gimplify_omp_ctx *c)
{
  splay_tree_delete (c->variables);
  pointer_set_destroy (c->privatized_types);
  XDELETE (c);
}
