
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BITMAP_ALLOC (int *) ;
 void* all_canon_types ;
 int bitmap_obstack_initialize (int *) ;
 int compare_type_brand ;
 void* global_types_exposed_parameter ;
 void* global_types_full_escape ;
 void* global_types_seen ;
 int initialized ;
 int ipa_obstack ;
 int pointer_set_create () ;
 void* results_of_malloc ;
 int splay_tree_compare_ints ;
 int splay_tree_compare_pointers ;
 void* splay_tree_new (int ,int ,int ) ;
 void* type_to_canon_type ;
 void* uid_to_addressof_down_map ;
 void* uid_to_addressof_up_map ;
 void* uid_to_canon_type ;
 void* uid_to_subtype_map ;
 int visited_nodes ;

__attribute__((used)) static void
ipa_init (void)
{
  bitmap_obstack_initialize (&ipa_obstack);
  global_types_exposed_parameter = BITMAP_ALLOC (&ipa_obstack);
  global_types_full_escape = BITMAP_ALLOC (&ipa_obstack);
  global_types_seen = BITMAP_ALLOC (&ipa_obstack);
  results_of_malloc = BITMAP_ALLOC (&ipa_obstack);

  uid_to_canon_type = splay_tree_new (splay_tree_compare_ints, 0, 0);
  all_canon_types = splay_tree_new (compare_type_brand, 0, 0);
  type_to_canon_type = splay_tree_new (splay_tree_compare_pointers, 0, 0);
  uid_to_subtype_map = splay_tree_new (splay_tree_compare_ints, 0, 0);
  uid_to_addressof_down_map = splay_tree_new (splay_tree_compare_ints, 0, 0);
  uid_to_addressof_up_map = splay_tree_new (splay_tree_compare_ints, 0, 0);





  visited_nodes = pointer_set_create ();
  initialized = 1;
}
