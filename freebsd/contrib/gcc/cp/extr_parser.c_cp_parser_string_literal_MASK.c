#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct obstack {int dummy; } ;
struct TYPE_18__ {unsigned char const* text; void* len; } ;
typedef  TYPE_2__ cpp_string ;
struct TYPE_17__ {int /*<<< orphan*/  value; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_1__ u; } ;
typedef  TYPE_3__ cp_token ;
struct TYPE_20__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_4__ cp_parser ;
typedef  int /*<<< orphan*/  TREE_TYPE ;

/* Variables and functions */
 scalar_t__ CPP_WSTRING ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  char_array_type_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,size_t,TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,size_t,TYPE_2__*,int) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct obstack*) ; 
 scalar_t__ FUNC13 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC14 (struct obstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct obstack*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  parse_in ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_2__*,size_t,TYPE_2__*,int) ; 
 int /*<<< orphan*/  wchar_array_type_node ; 

__attribute__((used)) static tree
FUNC17 (cp_parser *parser, bool translate, bool wide_ok)
{
  tree value;
  bool wide = false;
  size_t count;
  struct obstack str_ob;
  cpp_string str, istr, *strs;
  cp_token *tok;

  tok = FUNC5 (parser->lexer);
  if (!FUNC7 (tok))
    {
      FUNC6 (parser, "expected string-literal");
      return error_mark_node;
    }

  /* Try to avoid the overhead of creating and destroying an obstack
     for the common case of just one string.  */
  if (!FUNC7
      (FUNC4 (parser->lexer, 2)))
    {
      FUNC3 (parser->lexer);

      str.text = (const unsigned char *)FUNC1 (tok->u.value);
      str.len = FUNC0 (tok->u.value);
      count = 1;
      if (tok->type == CPP_WSTRING)
	wide = true;

      strs = &str;
    }
  else
    {
      FUNC12 (&str_ob);
      count = 0;

      do
	{
	  FUNC3 (parser->lexer);
	  count++;
	  str.text = (unsigned char *)FUNC1 (tok->u.value);
	  str.len = FUNC0 (tok->u.value);
	  if (tok->type == CPP_WSTRING)
	    wide = true;

	  FUNC15 (&str_ob, &str, sizeof (cpp_string));

	  tok = FUNC5 (parser->lexer);
	}
      while (FUNC7 (tok));

      strs = (cpp_string *) FUNC13 (&str_ob);
    }

  if (wide && !wide_ok)
    {
      FUNC6 (parser, "a wide string is invalid in this context");
      wide = false;
    }

  if ((translate ? cpp_interpret_string : cpp_interpret_string_notranslate)
      (parse_in, strs, count, &istr, wide))
    {
      value = FUNC2 (istr.len, (char *)istr.text);
      FUNC11 ((void *)istr.text);

      TREE_TYPE (value) = wide ? wchar_array_type_node : char_array_type_node;
      value = FUNC10 (value);
    }
  else
    /* cpp_interpret_string has issued an error.  */
    value = error_mark_node;

  if (count > 1)
    FUNC14 (&str_ob, 0);

  return value;
}