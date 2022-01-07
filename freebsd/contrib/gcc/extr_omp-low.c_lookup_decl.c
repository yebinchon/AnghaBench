
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_2__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_6__ {int decl_map; } ;
struct TYPE_8__ {TYPE_1__ cb; } ;
typedef TYPE_3__ omp_context ;
struct TYPE_7__ {int value; } ;


 TYPE_2__* splay_tree_lookup (int ,int ) ;

__attribute__((used)) static inline tree
lookup_decl (tree var, omp_context *ctx)
{
  splay_tree_node n;
  n = splay_tree_lookup (ctx->cb.decl_map, (splay_tree_key) var);
  return (tree) n->value;
}
