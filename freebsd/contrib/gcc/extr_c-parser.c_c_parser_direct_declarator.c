
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct c_declarator {int id_loc; } ;
struct c_arg_info {int dummy; } ;
typedef int c_parser ;
typedef scalar_t__ c_dtr_syn ;
struct TYPE_2__ {scalar_t__ id_kind; int location; int value; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_NAME ;
 int CPP_OPEN_PAREN ;
 int CPP_OPEN_SQUARE ;
 scalar_t__ C_DTR_ABSTRACT ;
 scalar_t__ C_DTR_BLOCK ;
 scalar_t__ C_DTR_NORMAL ;
 scalar_t__ C_ID_CLASSNAME ;
 scalar_t__ C_ID_ID ;
 scalar_t__ C_ID_TYPENAME ;
 int NULL_TREE ;
 struct c_declarator* build_attrs_declarator (int *,struct c_declarator*) ;
 struct c_declarator* build_function_declarator (struct c_arg_info*,struct c_declarator*) ;
 struct c_declarator* build_id_declarator (int ) ;
 int * c_parser_attributes (int *) ;
 int c_parser_consume_token (int *) ;
 struct c_declarator* c_parser_declarator (int *,int,scalar_t__,int*) ;
 struct c_declarator* c_parser_direct_declarator_inner (int *,int,struct c_declarator*) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_starts_declspecs (int *) ;
 struct c_arg_info* c_parser_parms_declarator (int *,int,int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;

__attribute__((used)) static struct c_declarator *
c_parser_direct_declarator (c_parser *parser, bool type_seen_p, c_dtr_syn kind,
       bool *seen_id)
{
  if ((kind != C_DTR_ABSTRACT && kind != C_DTR_BLOCK)
      && c_parser_next_token_is (parser, CPP_NAME)
      && ((type_seen_p

    && (c_parser_peek_token (parser)->id_kind == C_ID_TYPENAME
        || c_parser_peek_token (parser)->id_kind == C_ID_CLASSNAME))

   || c_parser_peek_token (parser)->id_kind == C_ID_ID))
    {
      struct c_declarator *inner
 = build_id_declarator (c_parser_peek_token (parser)->value);
      *seen_id = 1;
      inner->id_loc = c_parser_peek_token (parser)->location;
      c_parser_consume_token (parser);
      return c_parser_direct_declarator_inner (parser, *seen_id, inner);
    }

  if (kind != C_DTR_NORMAL
      && c_parser_next_token_is (parser, CPP_OPEN_SQUARE))
    {
      struct c_declarator *inner = build_id_declarator (NULL_TREE);
      return c_parser_direct_declarator_inner (parser, *seen_id, inner);
    }




  if (c_parser_next_token_is (parser, CPP_OPEN_PAREN))
    {
      tree attrs;
      struct c_declarator *inner;
      c_parser_consume_token (parser);
      attrs = c_parser_attributes (parser);
      if (kind != C_DTR_NORMAL
   && (c_parser_next_token_starts_declspecs (parser)
       || c_parser_next_token_is (parser, CPP_CLOSE_PAREN)))
 {
   struct c_arg_info *args
     = c_parser_parms_declarator (parser, kind == C_DTR_NORMAL,
      attrs);
   if (args == ((void*)0))
     return ((void*)0);
   else
     {
       inner
  = build_function_declarator (args,
          build_id_declarator (NULL_TREE));
       return c_parser_direct_declarator_inner (parser, *seen_id,
             inner);
     }
 }

      inner = c_parser_declarator (parser, type_seen_p, kind, seen_id);
      if (inner != ((void*)0) && attrs != ((void*)0))
 inner = build_attrs_declarator (attrs, inner);
      if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
 {
   c_parser_consume_token (parser);
   if (inner == ((void*)0))
     return ((void*)0);
   else
     return c_parser_direct_declarator_inner (parser, *seen_id, inner);
 }
      else
 {
   c_parser_skip_until_found (parser, CPP_CLOSE_PAREN,
         "expected %<)%>");
   return ((void*)0);
 }
    }
  else
    {
      if (kind == C_DTR_NORMAL)
 {
   c_parser_error (parser, "expected identifier or %<(%>");
   return ((void*)0);
 }
      else
 return build_id_declarator (NULL_TREE);
    }
}
