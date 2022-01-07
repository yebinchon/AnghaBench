
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_declspecs {int dummy; } ;
struct c_declarator {int dummy; } ;
typedef int c_parser ;
typedef int c_dtr_syn ;


 int CPP_MULT ;
 int CPP_XOR ;
 struct c_declspecs* build_null_declspecs () ;
 int c_parser_consume_token (int *) ;
 int c_parser_declspecs (int *,struct c_declspecs*,int,int,int) ;
 struct c_declarator* c_parser_direct_declarator (int *,int,int ,int*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ flag_blocks ;
 struct c_declarator* make_block_pointer_declarator (struct c_declspecs*,struct c_declarator*) ;
 struct c_declarator* make_pointer_declarator (struct c_declspecs*,struct c_declarator*) ;

__attribute__((used)) static struct c_declarator *
c_parser_declarator (c_parser *parser, bool type_seen_p, c_dtr_syn kind,
       bool *seen_id)
{

  if (c_parser_next_token_is (parser, CPP_MULT))
    {
      struct c_declspecs *quals_attrs = build_null_declspecs ();
      struct c_declarator *inner;
      c_parser_consume_token (parser);
      c_parser_declspecs (parser, quals_attrs, 0, 0, 1);
      inner = c_parser_declarator (parser, type_seen_p, kind, seen_id);
      if (inner == ((void*)0))
 return ((void*)0);
      else
 return make_pointer_declarator (quals_attrs, inner);
    }

  else if (flag_blocks && c_parser_next_token_is (parser, CPP_XOR)) {
    struct c_declspecs *quals_attrs = build_null_declspecs ();
    struct c_declarator *inner;
    c_parser_consume_token (parser);
    c_parser_declspecs (parser, quals_attrs, 0, 0, 1);
    inner = c_parser_declarator (parser, type_seen_p, kind, seen_id);
    if (inner == ((void*)0))
      return ((void*)0);
    else

      return make_block_pointer_declarator (quals_attrs, inner);
  }



  return c_parser_direct_declarator (parser, type_seen_p, kind, seen_id);
}
