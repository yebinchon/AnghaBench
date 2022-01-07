
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_varpool_node {struct cgraph_varpool_node* next_needed; int decl; } ;
struct TYPE_2__ {int (* global_decl ) (int ) ;} ;


 scalar_t__ BLOCK ;
 scalar_t__ DECL_CONTEXT (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TV_SYMOUT ;
 struct cgraph_varpool_node* cgraph_varpool_assembled_nodes_queue ;
 TYPE_1__* debug_hooks ;
 scalar_t__ errorcount ;
 scalar_t__ sorrycount ;
 int stub1 (int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static void
cgraph_varpool_output_debug_info (void)
{
  timevar_push (TV_SYMOUT);
  if (errorcount == 0 && sorrycount == 0)
    while (cgraph_varpool_assembled_nodes_queue)
      {
 struct cgraph_varpool_node *node = cgraph_varpool_assembled_nodes_queue;



 if (DECL_CONTEXT (node->decl)
     && (TREE_CODE (DECL_CONTEXT (node->decl)) == BLOCK
  || TREE_CODE (DECL_CONTEXT (node->decl)) == FUNCTION_DECL)
     && errorcount == 0 && sorrycount == 0)
      (*debug_hooks->global_decl) (node->decl);
 cgraph_varpool_assembled_nodes_queue = node->next_needed;
 node->next_needed = 0;
      }
  timevar_pop (TV_SYMOUT);
}
