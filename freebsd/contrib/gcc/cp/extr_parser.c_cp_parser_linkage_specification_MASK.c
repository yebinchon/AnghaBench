#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_9__ {int in_unbraced_linkage_specification_p; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  RID_EXTERN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lang_name_cplusplus ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (cp_parser* parser)
{
  tree linkage;

  /* Look for the `extern' keyword.  */
  FUNC8 (parser, RID_EXTERN, "`extern'");

  /* Look for the string-literal.  */
  linkage = FUNC9 (parser, false, false);

  /* Transform the literal into an identifier.  If the literal is a
     wide-character string, or contains embedded NULs, then we can't
     handle it as the user wants.  */
  if (FUNC13 (FUNC1 (linkage))
      != (size_t) (FUNC0 (linkage) - 1))
    {
      FUNC6 (parser, "invalid linkage-specification");
      /* Assume C++ linkage.  */
      linkage = lang_name_cplusplus;
    }
  else
    linkage = FUNC10 (FUNC1 (linkage));

  /* We're now using the new linkage.  */
  FUNC12 (linkage);

  /* If the next token is a `{', then we're using the first
     production.  */
  if (FUNC3 (parser->lexer, CPP_OPEN_BRACE))
    {
      /* Consume the `{' token.  */
      FUNC2 (parser->lexer);
      /* Parse the declarations.  */
      FUNC5 (parser);
      /* Look for the closing `}'.  */
      FUNC7 (parser, CPP_CLOSE_BRACE, "`}'");
    }
  /* Otherwise, there's just one declaration.  */
  else
    {
      bool saved_in_unbraced_linkage_specification_p;

      saved_in_unbraced_linkage_specification_p
	= parser->in_unbraced_linkage_specification_p;
      parser->in_unbraced_linkage_specification_p = true;
      FUNC4 (parser);
      parser->in_unbraced_linkage_specification_p
	= saved_in_unbraced_linkage_specification_p;
    }

  /* We're done with the linkage-specification.  */
  FUNC11 ();
}