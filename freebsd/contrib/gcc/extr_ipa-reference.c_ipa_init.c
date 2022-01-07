
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int decl; struct cgraph_node* next; } ;


 void* BITMAP_ALLOC (int *) ;
 void* all_module_statics ;
 int bitmap_obstack_initialize (int *) ;
 int build_string (int,char*) ;
 struct cgraph_node* cgraph_nodes ;
 int has_proper_scope_for_analysis (int ) ;
 int ipa_obstack ;
 int memory_identifier_string ;
 void* module_statics_escape ;
 void* module_statics_written ;
 int pointer_set_create () ;
 int reference_vars_to_consider ;
 int splay_tree_compare_ints ;
 int splay_tree_new_ggc (int ) ;
 int visited_nodes ;

__attribute__((used)) static void
ipa_init (void)
{
  struct cgraph_node *node;
  memory_identifier_string = build_string(7, "memory");

  reference_vars_to_consider =
    splay_tree_new_ggc (splay_tree_compare_ints);

  bitmap_obstack_initialize (&ipa_obstack);
  module_statics_escape = BITMAP_ALLOC (&ipa_obstack);
  module_statics_written = BITMAP_ALLOC (&ipa_obstack);
  all_module_statics = BITMAP_ALLOC (&ipa_obstack);


  for (node = cgraph_nodes; node; node = node->next)
    has_proper_scope_for_analysis (node->decl);





  visited_nodes = pointer_set_create ();
}
