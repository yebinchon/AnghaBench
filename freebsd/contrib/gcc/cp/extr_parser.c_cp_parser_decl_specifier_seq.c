
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_18__ {int keyword; } ;
typedef TYPE_1__ cp_token ;
typedef int cp_parser_flags ;
struct TYPE_19__ {int lexer; int in_declarator_p; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_20__ {scalar_t__* specs; int conflicting_specifiers_p; int any_specifiers_p; int storage_class; int attributes; } ;
typedef TYPE_3__ cp_decl_specifier_seq ;


 int CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES ;
 int CP_PARSER_FLAGS_OPTIONAL ;
 int RID_ATTRIBUTE ;
 int at_class_scope_p () ;
 int chainon (int ,int ) ;
 int clear_decl_specs (TYPE_3__*) ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_lexer_purge_token (int ) ;
 int cp_parser_attributes_opt (TYPE_2__*) ;
 int cp_parser_check_decl_spec (TYPE_3__*) ;
 int cp_parser_commit_to_tentative_parse (TYPE_2__*) ;
 scalar_t__ cp_parser_constructor_declarator_p (TYPE_2__*,int) ;
 int cp_parser_function_specifier_opt (TYPE_2__*,TYPE_3__*) ;
 int cp_parser_set_storage_class (TYPE_2__*,TYPE_3__*,int) ;
 scalar_t__ cp_parser_type_specifier (TYPE_2__*,int ,TYPE_3__*,int,int*,int*) ;
 scalar_t__ ds_friend ;
 scalar_t__ ds_thread ;
 scalar_t__ ds_typedef ;
 int error (char*) ;
 int sc_none ;

__attribute__((used)) static void
cp_parser_decl_specifier_seq (cp_parser* parser,
         cp_parser_flags flags,
         cp_decl_specifier_seq *decl_specs,
         int* declares_class_or_enum)
{
  bool constructor_possible_p = !parser->in_declarator_p;


  clear_decl_specs (decl_specs);


  *declares_class_or_enum = 0;


  while (1)
    {
      bool constructor_p;
      bool found_decl_spec;
      cp_token *token;


      token = cp_lexer_peek_token (parser->lexer);

      if (token->keyword == RID_ATTRIBUTE)
 {

   decl_specs->attributes
     = chainon (decl_specs->attributes,
         cp_parser_attributes_opt (parser));
   continue;
 }

      found_decl_spec = 1;


      switch (token->keyword)
 {


 case 135:
   if (!at_class_scope_p ())
     {
       error ("%<friend%> used outside of class");
       cp_lexer_purge_token (parser->lexer);
     }
   else
     {
       ++decl_specs->specs[(int) ds_friend];

       cp_lexer_consume_token (parser->lexer);
     }
   break;





 case 134:
 case 128:
 case 137:
   cp_parser_function_specifier_opt (parser, decl_specs);
   break;



 case 129:
   ++decl_specs->specs[(int) ds_typedef];

   cp_lexer_consume_token (parser->lexer);

   constructor_possible_p = 0;


   cp_parser_commit_to_tentative_parse (parser);

          if (decl_specs->storage_class != sc_none)
            decl_specs->conflicting_specifiers_p = 1;
   break;
 case 138:
 case 132:
 case 131:
 case 136:
 case 133:

   cp_lexer_consume_token (parser->lexer);
   cp_parser_set_storage_class (parser, decl_specs, token->keyword);
   break;
 case 130:

   cp_lexer_consume_token (parser->lexer);
   ++decl_specs->specs[(int) ds_thread];
   break;

 default:

   found_decl_spec = 0;
   break;
 }



      constructor_p
 = (!found_decl_spec
    && constructor_possible_p
    && (cp_parser_constructor_declarator_p
        (parser, decl_specs->specs[(int) ds_friend] != 0)));



      if (!found_decl_spec && !constructor_p)
 {
   int decl_spec_declares_class_or_enum;
   bool is_cv_qualifier;
   tree type_spec;

   type_spec
     = cp_parser_type_specifier (parser, flags,
     decl_specs,
                        1,
     &decl_spec_declares_class_or_enum,
     &is_cv_qualifier);

   *declares_class_or_enum |= decl_spec_declares_class_or_enum;
   if (type_spec && !is_cv_qualifier)
     flags |= CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES;

   if (type_spec)
     {
       constructor_possible_p = 0;
       found_decl_spec = 1;
     }
 }



      if (!found_decl_spec)
 break;

      decl_specs->any_specifiers_p = 1;


      flags |= CP_PARSER_FLAGS_OPTIONAL;
    }

  cp_parser_check_decl_spec (decl_specs);


  if (decl_specs->specs[(int) ds_friend] != 0
      && (*declares_class_or_enum & 2))
    error ("class definition may not be declared a friend");
}
