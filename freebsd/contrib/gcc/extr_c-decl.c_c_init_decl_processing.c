
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* file; scalar_t__ line; } ;
typedef TYPE_1__ location_t ;


 TYPE_1__ BUILTINS_LOCATION ;
 int TYPE_DECL ;
 int boolean_type_node ;
 int build_common_tree_nodes (int ,int) ;
 int build_decl (int ,int ,int ) ;
 int c_common_nodes_and_builtins () ;
 int c_make_fname_decl ;
 int c_parse_init () ;
 scalar_t__ current_function_decl ;
 int current_scope ;
 int external_scope ;
 int flag_signed_char ;
 int gcc_obstack_init (int *) ;
 int get_identifier (char*) ;
 TYPE_1__ input_location ;
 int integer_one_node ;
 int integer_type_node ;
 int integer_zero_node ;
 int make_fname_decl ;
 int parser_obstack ;
 int pedantic_lvalues ;
 int push_scope () ;
 int pushdecl (int ) ;
 int start_fname_decls () ;
 int truthvalue_false_node ;
 int truthvalue_true_node ;
 int truthvalue_type_node ;

void
c_init_decl_processing (void)
{
  location_t save_loc = input_location;


  c_parse_init ();

  current_function_decl = 0;

  gcc_obstack_init (&parser_obstack);


  push_scope ();
  external_scope = current_scope;







  input_location.file = "<built-in>";
  input_location.line = 0;


  build_common_tree_nodes (flag_signed_char, 0);

  c_common_nodes_and_builtins ();


  truthvalue_type_node = integer_type_node;
  truthvalue_true_node = integer_one_node;
  truthvalue_false_node = integer_zero_node;


  pushdecl (build_decl (TYPE_DECL, get_identifier ("_Bool"),
   boolean_type_node));

  input_location = save_loc;

  pedantic_lvalues = 1;

  make_fname_decl = c_make_fname_decl;
  start_fname_decls ();
}
