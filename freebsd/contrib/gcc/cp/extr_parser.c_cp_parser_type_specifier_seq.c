
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tree ;
typedef int cp_parser_flags ;
struct TYPE_11__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_12__ {int type; int attributes; } ;
typedef TYPE_2__ cp_decl_specifier_seq ;


 int CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES ;
 int CP_PARSER_FLAGS_OPTIONAL ;
 int RID_ATTRIBUTE ;
 int chainon (int ,int ) ;
 int clear_decl_specs (TYPE_2__*) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 int cp_parser_attributes_opt (TYPE_1__*) ;
 int cp_parser_check_decl_spec (TYPE_2__*) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int cp_parser_type_specifier (TYPE_1__*,int ,TYPE_2__*,int,int *,int*) ;
 int error_mark_node ;

__attribute__((used)) static void
cp_parser_type_specifier_seq (cp_parser* parser,
         bool is_condition,
         cp_decl_specifier_seq *type_specifier_seq)
{
  bool seen_type_specifier = 0;
  cp_parser_flags flags = CP_PARSER_FLAGS_OPTIONAL;


  clear_decl_specs (type_specifier_seq);


  while (1)
    {
      tree type_specifier;
      bool is_cv_qualifier;


      if (cp_lexer_next_token_is_keyword (parser->lexer, RID_ATTRIBUTE))
 {
   type_specifier_seq->attributes =
     chainon (type_specifier_seq->attributes,
       cp_parser_attributes_opt (parser));
   continue;
 }


      type_specifier = cp_parser_type_specifier (parser,
       flags,
       type_specifier_seq,
                          0,
       ((void*)0),
       &is_cv_qualifier);
      if (!type_specifier)
 {


   if (!seen_type_specifier)
     {
       cp_parser_error (parser, "expected type-specifier");
       type_specifier_seq->type = error_mark_node;
       return;
     }


   break;
 }

      seen_type_specifier = 1;
      if (is_condition && !is_cv_qualifier)
 flags |= CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES;
    }

  cp_parser_check_decl_spec (type_specifier_seq);
}
