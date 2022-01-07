
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int cp_parser ;
typedef int cp_declarator ;
struct TYPE_5__ {int attributes; int type; } ;
typedef TYPE_1__ cp_decl_specifier_seq ;


 int CP_PARSER_DECLARATOR_NAMED ;
 int CP_PARSER_FLAGS_OPTIONAL ;
 int NORMAL ;
 scalar_t__ NULL_TREE ;
 int RID_TEMPLATE ;
 int begin_explicit_instantiation () ;
 scalar_t__ check_tag_decl (TYPE_1__*) ;
 int * cp_error_declarator ;
 scalar_t__ cp_parser_allow_gnu_extensions_p (int *) ;
 int cp_parser_check_for_definition_in_return_type (int *,int ) ;
 int cp_parser_consume_semicolon_at_end_of_statement (int *) ;
 int cp_parser_decl_specifier_seq (int *,int ,TYPE_1__*,int*) ;
 int * cp_parser_declarator (int *,int ,int *,int *,int) ;
 scalar_t__ cp_parser_declares_only_class_p (int *) ;
 scalar_t__ cp_parser_function_specifier_opt (int *,int *) ;
 int cp_parser_require_keyword (int *,int ,char*) ;
 int cp_parser_skip_to_end_of_statement (int *) ;
 scalar_t__ cp_parser_storage_class_specifier_opt (int *) ;
 int dk_no_check ;
 int do_decl_instantiation (scalar_t__,scalar_t__) ;
 int do_type_instantiation (scalar_t__,scalar_t__,int ) ;
 int end_explicit_instantiation () ;
 scalar_t__ grokdeclarator (int *,TYPE_1__*,int ,int ,int *) ;
 int pop_deferring_access_checks () ;
 int push_deferring_access_checks (int ) ;
 int tf_error ;

__attribute__((used)) static void
cp_parser_explicit_instantiation (cp_parser* parser)
{
  int declares_class_or_enum;
  cp_decl_specifier_seq decl_specifiers;
  tree extension_specifier = NULL_TREE;



  if (cp_parser_allow_gnu_extensions_p (parser))
    {
      extension_specifier
 = cp_parser_storage_class_specifier_opt (parser);
      if (!extension_specifier)
 extension_specifier
   = cp_parser_function_specifier_opt (parser,
                          ((void*)0));
    }


  cp_parser_require_keyword (parser, RID_TEMPLATE, "`template'");


  begin_explicit_instantiation ();


  push_deferring_access_checks (dk_no_check);

  cp_parser_decl_specifier_seq (parser,
    CP_PARSER_FLAGS_OPTIONAL,
    &decl_specifiers,
    &declares_class_or_enum);



  if (declares_class_or_enum && cp_parser_declares_only_class_p (parser))
    {
      tree type;

      type = check_tag_decl (&decl_specifiers);


      pop_deferring_access_checks ();
      if (type)
 do_type_instantiation (type, extension_specifier,
                       tf_error);
    }
  else
    {
      cp_declarator *declarator;
      tree decl;


      declarator
 = cp_parser_declarator (parser, CP_PARSER_DECLARATOR_NAMED,
                            ((void*)0),
                        ((void*)0),
                 0);
      if (declares_class_or_enum & 2)
 cp_parser_check_for_definition_in_return_type (declarator,
             decl_specifiers.type);
      if (declarator != cp_error_declarator)
 {
   decl = grokdeclarator (declarator, &decl_specifiers,
     NORMAL, 0, &decl_specifiers.attributes);


   pop_deferring_access_checks ();

   do_decl_instantiation (decl, extension_specifier);
 }
      else
 {
   pop_deferring_access_checks ();

   cp_parser_skip_to_end_of_statement (parser);
 }
    }

  end_explicit_instantiation ();

  cp_parser_consume_semicolon_at_end_of_statement (parser);
}
