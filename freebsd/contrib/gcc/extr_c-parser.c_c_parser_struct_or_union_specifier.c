
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct c_typespec {int kind; int spec; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_parser ;
struct TYPE_2__ {int keyword; scalar_t__ id_kind; int value; } ;


 int CPP_CLOSE_BRACE ;
 int CPP_CLOSE_PAREN ;
 int CPP_NAME ;
 int CPP_OPEN_BRACE ;
 int CPP_OPEN_PAREN ;
 int CPP_PRAGMA ;
 int CPP_SEMICOLON ;
 scalar_t__ C_ID_CLASSNAME ;
 int NULL_TREE ;
 int RECORD_TYPE ;
 int RID_AT_DEFS ;


 int UNION_TYPE ;
 int c_dialect_objc () ;
 int c_parser_attributes (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_pragma (int *,int ) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int c_parser_struct_declaration (int *) ;
 int chainon (int ,int ) ;
 int ctsk_tagdef ;
 int ctsk_tagref ;
 int error_mark_node ;
 int finish_struct (int ,int ,int ) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int nreverse (int ) ;
 int objc_get_class_ivars (int ) ;
 struct c_typespec parser_xref_tag (int,int ) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int pragma_external ;
 int start_struct (int,int ) ;

__attribute__((used)) static struct c_typespec
c_parser_struct_or_union_specifier (c_parser *parser)
{
  struct c_typespec ret;
  tree attrs;
  tree ident = NULL_TREE;
  enum tree_code code;
  switch (c_parser_peek_token (parser)->keyword)
    {
    case 129:
      code = RECORD_TYPE;
      break;
    case 128:
      code = UNION_TYPE;
      break;
    default:
      gcc_unreachable ();
    }
  c_parser_consume_token (parser);
  attrs = c_parser_attributes (parser);
  if (c_parser_next_token_is (parser, CPP_NAME))
    {
      ident = c_parser_peek_token (parser)->value;
      c_parser_consume_token (parser);
    }
  if (c_parser_next_token_is (parser, CPP_OPEN_BRACE))
    {


      tree type = start_struct (code, ident);
      tree postfix_attrs;
      tree contents = NULL_TREE;
      c_parser_consume_token (parser);


      if (c_parser_next_token_is_keyword (parser, RID_AT_DEFS))
 {
   tree name;
   gcc_assert (c_dialect_objc ());
   c_parser_consume_token (parser);
   if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
     goto end_at_defs;
   if (c_parser_next_token_is (parser, CPP_NAME)
       && c_parser_peek_token (parser)->id_kind == C_ID_CLASSNAME)
     {
       name = c_parser_peek_token (parser)->value;
       c_parser_consume_token (parser);
     }
   else
     {
       c_parser_error (parser, "expected class name");
       c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, ((void*)0));
       goto end_at_defs;
     }
   c_parser_skip_until_found (parser, CPP_CLOSE_PAREN,
         "expected %<)%>");
   contents = nreverse (objc_get_class_ivars (name));
 }
    end_at_defs:



      while (1)
 {
   tree decls;

   if (c_parser_next_token_is (parser, CPP_SEMICOLON))
     {
       if (pedantic)
  pedwarn ("extra semicolon in struct or union specified");
       c_parser_consume_token (parser);
       continue;
     }

   if (c_parser_next_token_is (parser, CPP_CLOSE_BRACE))
     {
       c_parser_consume_token (parser);
       break;
     }

   if (c_parser_next_token_is (parser, CPP_PRAGMA))
     {
       c_parser_pragma (parser, pragma_external);
       continue;
     }


   decls = c_parser_struct_declaration (parser);
   contents = chainon (decls, contents);



   if (c_parser_next_token_is (parser, CPP_SEMICOLON))
     c_parser_consume_token (parser);
   else
     {
       if (c_parser_next_token_is (parser, CPP_CLOSE_BRACE))
  pedwarn ("no semicolon at end of struct or union");
       else
  {
    c_parser_error (parser, "expected %<;%>");
    c_parser_skip_until_found (parser, CPP_CLOSE_BRACE, ((void*)0));
    break;
  }
     }
 }
      postfix_attrs = c_parser_attributes (parser);
      ret.spec = finish_struct (type, nreverse (contents),
    chainon (attrs, postfix_attrs));
      ret.kind = ctsk_tagdef;
      return ret;
    }
  else if (!ident)
    {
      c_parser_error (parser, "expected %<{%>");
      ret.spec = error_mark_node;
      ret.kind = ctsk_tagref;
      return ret;
    }
  ret = parser_xref_tag (code, ident);
  return ret;
}
