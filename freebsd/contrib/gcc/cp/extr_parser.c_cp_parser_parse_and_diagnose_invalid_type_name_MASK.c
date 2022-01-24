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
struct TYPE_9__ {scalar_t__ scope; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC10 (cp_parser *parser)
{
  tree id;

  FUNC7 (parser);
  id = FUNC5 (parser,
				/*template_keyword_p=*/false,
				/*check_dependency_p=*/true,
				/*template_p=*/NULL,
				/*declarator_p=*/true,
				/*optional_p=*/false);
  /* After the id-expression, there should be a plain identifier,
     otherwise this is not a simple variable declaration. Also, if
     the scope is dependent, we cannot do much.  */
  if (!FUNC2 (parser->lexer, CPP_NAME)
      || (parser->scope && FUNC1 (parser->scope)
	  && FUNC9 (parser->scope))
      || FUNC0 (id) == TYPE_DECL)
    {
      FUNC3 (parser);
      return false;
    }
  if (!FUNC6 (parser))
    return false;

  /* Emit a diagnostic for the invalid type.  */
  FUNC4 (parser, parser->scope, id);
  /* Skip to the end of the declaration; there's no point in
     trying to process it.  */
  FUNC8 (parser);
  return true;
}