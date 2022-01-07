
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct c_expr {scalar_t__ value; } ;
struct c_declspecs {scalar_t__ attrs; int declspecs_seen_p; scalar_t__ type_seen_p; scalar_t__ non_sc_seen_p; } ;
struct c_declarator {TYPE_1__* declarator; } ;
struct TYPE_21__ {scalar_t__ error; } ;
typedef TYPE_2__ c_parser ;
struct TYPE_22__ {scalar_t__ location; } ;
struct TYPE_20__ {scalar_t__ kind; } ;
typedef scalar_t__ DECL_SOURCE_LOCATION ;


 int CPP_COMMA ;
 int CPP_EOF ;
 int CPP_EQ ;
 int CPP_OPEN_BRACE ;
 int CPP_SEMICOLON ;
 int C_DTR_NORMAL ;
 int DECL_EXPR ;
 scalar_t__ NULL_TREE ;
 int RID_ASM ;
 int RID_ATTRIBUTE ;
 int RID_AT_IMPLEMENTATION ;
 int RID_AT_INTERFACE ;
 int RID_AT_PROTOCOL ;
 int RID_IN ;
 int TREE_TYPE (scalar_t__) ;
 int add_stmt (scalar_t__) ;
 struct c_declspecs* build_null_declspecs () ;
 scalar_t__ build_stmt (int ,scalar_t__) ;
 scalar_t__* c_dialect_objc () ;
 scalar_t__ c_parser_attributes (TYPE_2__*) ;
 scalar_t__ c_parser_compound_statement (TYPE_2__*) ;
 int c_parser_consume_token (TYPE_2__*) ;
 struct c_declarator* c_parser_declarator (TYPE_2__*,scalar_t__,int ,int*) ;
 int c_parser_declspecs (TYPE_2__*,struct c_declspecs*,int,int,int) ;
 int c_parser_error (TYPE_2__*,char*) ;
 struct c_expr c_parser_initializer (TYPE_2__*) ;
 scalar_t__ c_parser_next_token_is (TYPE_2__*,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (TYPE_2__*,int ) ;
 scalar_t__ c_parser_next_token_is_not (TYPE_2__*,int ) ;
 int c_parser_objc_class_definition (TYPE_2__*,scalar_t__) ;
 int c_parser_objc_protocol_definition (TYPE_2__*,scalar_t__) ;
 TYPE_5__* c_parser_peek_token (TYPE_2__*) ;
 scalar_t__ c_parser_simple_asm_expr (TYPE_2__*) ;
 int c_parser_skip_to_end_of_block_or_statement (TYPE_2__*) ;
 scalar_t__ cdk_block_pointer ;
 scalar_t__ chainon (scalar_t__,scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int finish_decl (scalar_t__,scalar_t__,scalar_t__) ;
 int finish_declspecs (struct c_declspecs*) ;
 int finish_function () ;
 int finish_init () ;
 scalar_t__ flag_nested_functions ;
 int gcc_assert (scalar_t__*) ;
 int global_bindings_p () ;
 int maybe_warn_string_init (int ,struct c_expr) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int pending_xref_error () ;
 int pop_function_context () ;
 int push_function_context () ;
 int shadow_tag (struct c_declspecs*) ;
 int shadow_tag_warned (struct c_declspecs*,int) ;
 scalar_t__ start_decl (struct c_declarator*,struct c_declspecs*,int,scalar_t__) ;
 int start_function (struct c_declspecs*,struct c_declarator*,scalar_t__) ;
 int start_init (scalar_t__,scalar_t__,int ) ;
 int store_parm_decls () ;

__attribute__((used)) static void
c_parser_declaration_or_fndef (c_parser *parser, bool fndef_ok, bool empty_ok,

          bool nested, bool start_attr_ok, tree *foreach_elem)
{
  struct c_declspecs *specs;
  tree prefix_attrs;
  tree all_prefix_attrs;
  bool diagnosed_no_specs = 0;

  specs = build_null_declspecs ();
  c_parser_declspecs (parser, specs, 1, 1, start_attr_ok);
  if (parser->error)
    {
      c_parser_skip_to_end_of_block_or_statement (parser);
      return;
    }
  if (nested && !specs->declspecs_seen_p)
    {
      c_parser_error (parser, "expected declaration specifiers");
      c_parser_skip_to_end_of_block_or_statement (parser);
      return;
    }
  finish_declspecs (specs);
  if (c_parser_next_token_is (parser, CPP_SEMICOLON))
    {
      if (empty_ok)
 shadow_tag (specs);
      else
 {
   shadow_tag_warned (specs, 1);
   pedwarn ("empty declaration");
 }
      c_parser_consume_token (parser);
      return;
    }

  else if (c_parser_next_token_is_keyword (parser, RID_AT_INTERFACE)
    || c_parser_next_token_is_keyword (parser, RID_AT_IMPLEMENTATION))
    {
      gcc_assert (c_dialect_objc ());
      if (!specs->declspecs_seen_p || specs->attrs == NULL_TREE
   || specs->type_seen_p || specs->non_sc_seen_p)
 c_parser_error (parser, "no type or storage class may be specified here");
      c_parser_objc_class_definition (parser, specs->attrs);
      return;
    }


  else if (c_parser_next_token_is_keyword (parser, RID_AT_PROTOCOL))
    {
      gcc_assert (c_dialect_objc ());
      if (!specs->declspecs_seen_p || specs->attrs == NULL_TREE
   || specs->type_seen_p || specs->non_sc_seen_p)
 c_parser_error (parser, "no type or storage class may be specified here");
      c_parser_objc_protocol_definition (parser, specs->attrs);
      return;
    }

  pending_xref_error ();
  prefix_attrs = specs->attrs;
  all_prefix_attrs = prefix_attrs;
  specs->attrs = NULL_TREE;
  while (1)
    {
      struct c_declarator *declarator;
      bool dummy = 0;
      tree fnbody;




      declarator = c_parser_declarator (parser, specs->type_seen_p,
     C_DTR_NORMAL, &dummy);
      if (declarator == ((void*)0))
 {
   c_parser_skip_to_end_of_block_or_statement (parser);
   return;
 }
      if (c_parser_next_token_is (parser, CPP_EQ)
   || c_parser_next_token_is (parser, CPP_COMMA)
   || c_parser_next_token_is (parser, CPP_SEMICOLON)
   || c_parser_next_token_is_keyword (parser, RID_ASM)

   || c_parser_next_token_is_keyword (parser, RID_IN)
   || c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
 {
   tree asm_name = NULL_TREE;
   tree postfix_attrs = NULL_TREE;
   if (!diagnosed_no_specs && !specs->declspecs_seen_p)
     {
       diagnosed_no_specs = 1;
       pedwarn ("data definition has no type or storage class");
     }


   fndef_ok = 0;
   if (c_parser_next_token_is_keyword (parser, RID_ASM))
     asm_name = c_parser_simple_asm_expr (parser);
   if (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
     postfix_attrs = c_parser_attributes (parser);

   if (c_parser_next_token_is_keyword (parser, RID_IN))
     {
       gcc_assert (foreach_elem);
       *foreach_elem = start_decl (declarator, specs, 1,
       chainon (postfix_attrs, all_prefix_attrs));
       if (!*foreach_elem)
  *foreach_elem = error_mark_node;
       start_init (*foreach_elem, asm_name, global_bindings_p ());
       return;
     }

   if (c_parser_next_token_is (parser, CPP_EQ))
     {
       tree d;
       struct c_expr init;
       c_parser_consume_token (parser);


       d = start_decl (declarator, specs, 1,
         chainon (postfix_attrs, all_prefix_attrs));
       if (!d)
  d = error_mark_node;
       start_init (d, asm_name, global_bindings_p ());
       init = c_parser_initializer (parser);
       finish_init ();
       if (d != error_mark_node)
  {
    maybe_warn_string_init (TREE_TYPE (d), init);
    finish_decl (d, init.value, asm_name);
  }
     }
   else
     {
       tree d = start_decl (declarator, specs, 0,
       chainon (postfix_attrs,
         all_prefix_attrs));
       if (d)
  finish_decl (d, NULL_TREE, asm_name);
     }
   if (c_parser_next_token_is (parser, CPP_COMMA))
     {
       c_parser_consume_token (parser);
       if (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
  all_prefix_attrs = chainon (c_parser_attributes (parser),
         prefix_attrs);
       else
  all_prefix_attrs = prefix_attrs;
       continue;
     }
   else if (c_parser_next_token_is (parser, CPP_SEMICOLON))
     {
       c_parser_consume_token (parser);
       return;
     }
   else
     {
       c_parser_error (parser, "expected %<,%> or %<;%>");
       c_parser_skip_to_end_of_block_or_statement (parser);
       return;
     }
 }
      else if (!fndef_ok)
 {
   c_parser_error (parser, "expected %<=%>, %<,%>, %<;%>, "
     "%<asm%> or %<__attribute__%>");
   c_parser_skip_to_end_of_block_or_statement (parser);
   return;
 }

      if (nested)
 {

    if (declarator->declarator && declarator->declarator->kind == cdk_block_pointer)
      error ("bad definition of a block");
   else if (pedantic)

     pedwarn ("ISO C forbids nested functions");

   else if (flag_nested_functions == 0)
     error ("nested functions are disabled, use -fnested-functions to re-enable");


   push_function_context ();
 }
      if (!start_function (specs, declarator, all_prefix_attrs))
 {



   c_parser_error (parser, "expected %<=%>, %<,%>, %<;%>, %<asm%> "
     "or %<__attribute__%>");
   if (nested)
     pop_function_context ();
   break;
 }
      while (c_parser_next_token_is_not (parser, CPP_EOF)
      && c_parser_next_token_is_not (parser, CPP_OPEN_BRACE))

 c_parser_declaration_or_fndef (parser, 0, 0, 1, 0, ((void*)0));
      DECL_SOURCE_LOCATION (current_function_decl)
 = c_parser_peek_token (parser)->location;
      store_parm_decls ();
      fnbody = c_parser_compound_statement (parser);
      if (nested)
 {
   tree decl = current_function_decl;
   add_stmt (fnbody);
   finish_function ();
   pop_function_context ();
   add_stmt (build_stmt (DECL_EXPR, decl));
 }
      else
 {
   add_stmt (fnbody);
   finish_function ();
 }
      break;
    }
}
