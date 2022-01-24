#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int implicit_extern_c; int /*<<< orphan*/ * lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_EOF ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  cdk_error ; 
 scalar_t__ cp_error_declarator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  declarator_obstack ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_parameters ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static bool
FUNC11 (cp_parser* parser)
{
  /* The address of the first non-permanent object on the declarator
     obstack.  */
  static void *declarator_obstack_base;

  bool success;

  /* Create the declarator obstack, if necessary.  */
  if (!cp_error_declarator)
    {
      FUNC6 (&declarator_obstack);
      /* Create the error declarator.  */
      cp_error_declarator = FUNC7 (cdk_error);
      /* Create the empty parameter list.  */
      no_parameters = FUNC8 (NULL, NULL, NULL_TREE);
      /* Remember where the base of the declarator obstack lies.  */
      declarator_obstack_base = FUNC9 (&declarator_obstack);
    }

  FUNC2 (parser);

  /* If there are no tokens left then all went well.  */
  if (FUNC1 (parser->lexer, CPP_EOF))
    {
      /* Get rid of the token array; we don't need it any more.  */
      FUNC0 (parser->lexer);
      parser->lexer = NULL;

      /* This file might have been a context that's implicitly extern
	 "C".  If so, pop the lang context.  (Only relevant for PCH.) */
      if (parser->implicit_extern_c)
	{
	  FUNC10 ();
	  parser->implicit_extern_c = false;
	}

      /* Finish up.  */
      FUNC4 ();

      success = true;
    }
  else
    {
      FUNC3 (parser, "expected declaration");
      success = false;
    }

  /* Make sure the declarator obstack was fully cleaned up.  */
  FUNC5 (FUNC9 (&declarator_obstack)
	      == declarator_obstack_base);

  /* All went well.  */
  return success;
}