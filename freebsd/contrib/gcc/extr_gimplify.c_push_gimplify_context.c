
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gimplify_ctx {int temp_htab; struct gimplify_ctx* prev_context; } ;


 int free ;
 int gimple_tree_eq ;
 int gimple_tree_hash ;
 struct gimplify_ctx* gimplify_ctxp ;
 int htab_create (int,int ,int ,int ) ;
 scalar_t__ optimize ;
 scalar_t__ xcalloc (int,int) ;

void
push_gimplify_context (void)
{
  struct gimplify_ctx *c;

  c = (struct gimplify_ctx *) xcalloc (1, sizeof (struct gimplify_ctx));
  c->prev_context = gimplify_ctxp;
  if (optimize)
    c->temp_htab = htab_create (1000, gimple_tree_hash, gimple_tree_eq, free);

  gimplify_ctxp = c;
}
