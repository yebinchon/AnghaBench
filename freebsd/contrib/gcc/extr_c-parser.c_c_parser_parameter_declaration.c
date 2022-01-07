
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct c_parm {int dummy; } ;
struct c_declspecs {int type_seen_p; void* attrs; } ;
struct c_declarator {int dummy; } ;
typedef int c_parser ;


 int CPP_COMMA ;
 int C_DTR_PARM ;
 void* NULL_TREE ;
 int RID_ATTRIBUTE ;
 struct c_parm* build_c_parm (struct c_declspecs*,int ,struct c_declarator*) ;
 struct c_declspecs* build_null_declspecs () ;
 void* c_parser_attributes (int *) ;
 struct c_declarator* c_parser_declarator (int *,int ,int ,int*) ;
 int c_parser_declspecs (int *,struct c_declspecs*,int,int,int) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_next_token_starts_declspecs (int *) ;
 int c_parser_skip_to_end_of_parameter (int *) ;
 int c_parser_skip_until_found (int *,int ,int *) ;
 int chainon (void*,void*) ;
 int declspecs_add_attrs (struct c_declspecs*,void*) ;
 int finish_declspecs (struct c_declspecs*) ;
 int pending_xref_error () ;

__attribute__((used)) static struct c_parm *
c_parser_parameter_declaration (c_parser *parser, tree attrs)
{
  struct c_declspecs *specs;
  struct c_declarator *declarator;
  tree prefix_attrs;
  tree postfix_attrs = NULL_TREE;
  bool dummy = 0;
  if (!c_parser_next_token_starts_declspecs (parser))
    {


      c_parser_error (parser,
        "expected declaration specifiers or %<...%>");
      c_parser_skip_to_end_of_parameter (parser);
      return ((void*)0);
    }
  specs = build_null_declspecs ();
  if (attrs)
    {
      declspecs_add_attrs (specs, attrs);
      attrs = NULL_TREE;
    }
  c_parser_declspecs (parser, specs, 1, 1, 1);
  finish_declspecs (specs);
  pending_xref_error ();
  prefix_attrs = specs->attrs;
  specs->attrs = NULL_TREE;
  declarator = c_parser_declarator (parser, specs->type_seen_p,
        C_DTR_PARM, &dummy);
  if (declarator == ((void*)0))
    {
      c_parser_skip_until_found (parser, CPP_COMMA, ((void*)0));
      return ((void*)0);
    }
  if (c_parser_next_token_is_keyword (parser, RID_ATTRIBUTE))
    postfix_attrs = c_parser_attributes (parser);
  return build_c_parm (specs, chainon (postfix_attrs, prefix_attrs),
         declarator);
}
