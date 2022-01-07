
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct c_expr {int original_code; int value; } ;
struct TYPE_8__ {scalar_t__ error; } ;
typedef TYPE_1__ c_parser ;


 int CPP_CLOSE_BRACE ;
 int CPP_COMMA ;
 int CPP_OPEN_BRACE ;
 int ERROR_MARK ;
 int c_parser_consume_token (TYPE_1__*) ;
 int c_parser_initelt (TYPE_1__*) ;
 scalar_t__ c_parser_next_token_is (TYPE_1__*,int ) ;
 scalar_t__ c_parser_next_token_is_not (TYPE_1__*,int ) ;
 int c_parser_skip_until_found (TYPE_1__*,int ,char*) ;
 int error_mark_node ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 struct c_expr pop_init_level (int ) ;
 int push_init_level (int ) ;
 int really_start_incremental_init (int ) ;

__attribute__((used)) static struct c_expr
c_parser_braced_init (c_parser *parser, tree type, bool nested_p)
{
  gcc_assert (c_parser_next_token_is (parser, CPP_OPEN_BRACE));
  c_parser_consume_token (parser);
  if (nested_p)
    push_init_level (0);
  else
    really_start_incremental_init (type);
  if (c_parser_next_token_is (parser, CPP_CLOSE_BRACE))
    {
      if (pedantic)
 pedwarn ("ISO C forbids empty initializer braces");
    }
  else
    {


      while (1)
 {
   c_parser_initelt (parser);
   if (parser->error)
     break;
   if (c_parser_next_token_is (parser, CPP_COMMA))
     c_parser_consume_token (parser);
   else
     break;
   if (c_parser_next_token_is (parser, CPP_CLOSE_BRACE))
     break;
 }
    }
  if (c_parser_next_token_is_not (parser, CPP_CLOSE_BRACE))
    {
      struct c_expr ret;
      ret.value = error_mark_node;
      ret.original_code = ERROR_MARK;
      c_parser_skip_until_found (parser, CPP_CLOSE_BRACE, "expected %<}%>");
      return ret;
    }
  c_parser_consume_token (parser);
  return pop_init_level (0);
}
