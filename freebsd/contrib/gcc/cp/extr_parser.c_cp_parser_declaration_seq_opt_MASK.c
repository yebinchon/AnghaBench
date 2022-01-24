#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; scalar_t__ implicit_extern_c; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_8__ {int implicit_extern_c; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 scalar_t__ CPP_CLOSE_BRACE ; 
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_PRAGMA ; 
 scalar_t__ CPP_PRAGMA_EOL ; 
 scalar_t__ CPP_SEMICOLON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_system_header ; 
 int /*<<< orphan*/  lang_name_c ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pragma_external ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (cp_parser* parser)
{
  while (true)
    {
      cp_token *token;

      token = FUNC1 (parser->lexer);

      if (token->type == CPP_CLOSE_BRACE
	  || token->type == CPP_EOF
	  || token->type == CPP_PRAGMA_EOL)
	break;

      if (token->type == CPP_SEMICOLON)
	{
	  /* A declaration consisting of a single semicolon is
	     invalid.  Allow it unless we're being pedantic.  */
	  FUNC0 (parser->lexer);
	  if (pedantic && !in_system_header)
	    FUNC4 ("extra %<;%>");
	  continue;
	}

      /* If we're entering or exiting a region that's implicitly
	 extern "C", modify the lang context appropriately.  */
      if (!parser->implicit_extern_c && token->implicit_extern_c)
	{
	  FUNC6 (lang_name_c);
	  parser->implicit_extern_c = true;
	}
      else if (parser->implicit_extern_c && !token->implicit_extern_c)
	{
	  FUNC5 ();
	  parser->implicit_extern_c = false;
	}

      if (token->type == CPP_PRAGMA)
	{
	  /* A top-level declaration can consist solely of a #pragma.
	     A nested declaration cannot, so this is done here and not
	     in cp_parser_declaration.  (A #pragma at block scope is
	     handled in cp_parser_statement.)  */
	  FUNC3 (parser, pragma_external);
	  continue;
	}

      /* Parse the declaration itself.  */
      FUNC2 (parser);
    }
}