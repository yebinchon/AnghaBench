
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int tree ;
struct obstack {int dummy; } ;
struct TYPE_18__ {unsigned char const* text; void* len; } ;
typedef TYPE_2__ cpp_string ;
struct TYPE_17__ {int value; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_3__ cp_token ;
struct TYPE_20__ {int lexer; } ;
typedef TYPE_4__ cp_parser ;
typedef int TREE_TYPE ;


 scalar_t__ CPP_WSTRING ;
 void* TREE_STRING_LENGTH (int ) ;
 scalar_t__ TREE_STRING_POINTER (int ) ;
 int build_string (void*,char*) ;
 int char_array_type_node ;
 int cp_lexer_consume_token (int ) ;
 TYPE_3__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_3__* cp_lexer_peek_token (int ) ;
 int cp_parser_error (TYPE_4__*,char*) ;
 scalar_t__ cp_parser_is_string_literal (TYPE_3__*) ;
 scalar_t__ cpp_interpret_string (int ,TYPE_2__*,size_t,TYPE_2__*,int) ;
 scalar_t__ cpp_interpret_string_notranslate (int ,TYPE_2__*,size_t,TYPE_2__*,int) ;
 int error_mark_node ;
 int fix_string_type (int ) ;
 int free (void*) ;
 int gcc_obstack_init (struct obstack*) ;
 scalar_t__ obstack_finish (struct obstack*) ;
 int obstack_free (struct obstack*,int ) ;
 int obstack_grow (struct obstack*,TYPE_2__*,int) ;
 int parse_in ;
 scalar_t__ stub1 (int ,TYPE_2__*,size_t,TYPE_2__*,int) ;
 int wchar_array_type_node ;

__attribute__((used)) static tree
cp_parser_string_literal (cp_parser *parser, bool translate, bool wide_ok)
{
  tree value;
  bool wide = 0;
  size_t count;
  struct obstack str_ob;
  cpp_string str, istr, *strs;
  cp_token *tok;

  tok = cp_lexer_peek_token (parser->lexer);
  if (!cp_parser_is_string_literal (tok))
    {
      cp_parser_error (parser, "expected string-literal");
      return error_mark_node;
    }



  if (!cp_parser_is_string_literal
      (cp_lexer_peek_nth_token (parser->lexer, 2)))
    {
      cp_lexer_consume_token (parser->lexer);

      str.text = (const unsigned char *)TREE_STRING_POINTER (tok->u.value);
      str.len = TREE_STRING_LENGTH (tok->u.value);
      count = 1;
      if (tok->type == CPP_WSTRING)
 wide = 1;

      strs = &str;
    }
  else
    {
      gcc_obstack_init (&str_ob);
      count = 0;

      do
 {
   cp_lexer_consume_token (parser->lexer);
   count++;
   str.text = (unsigned char *)TREE_STRING_POINTER (tok->u.value);
   str.len = TREE_STRING_LENGTH (tok->u.value);
   if (tok->type == CPP_WSTRING)
     wide = 1;

   obstack_grow (&str_ob, &str, sizeof (cpp_string));

   tok = cp_lexer_peek_token (parser->lexer);
 }
      while (cp_parser_is_string_literal (tok));

      strs = (cpp_string *) obstack_finish (&str_ob);
    }

  if (wide && !wide_ok)
    {
      cp_parser_error (parser, "a wide string is invalid in this context");
      wide = 0;
    }

  if ((translate ? cpp_interpret_string : cpp_interpret_string_notranslate)
      (parse_in, strs, count, &istr, wide))
    {
      value = build_string (istr.len, (char *)istr.text);
      free ((void *)istr.text);

      TREE_TYPE (value) = wide ? wchar_array_type_node : char_array_type_node;
      value = fix_string_type (value);
    }
  else

    value = error_mark_node;

  if (count > 1)
    obstack_free (&str_ob, 0);

  return value;
}
