#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  cp_declarator ;
typedef  int /*<<< orphan*/  cp_decl_specifier_seq ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNCDEF ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  SF_DEFAULT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC8 (cp_decl_specifier_seq *declspecs,
		const cp_declarator *declarator,
		tree attrs)
{
  tree decl1;

  decl1 = FUNC5 (declarator, declspecs, FUNCDEF, 1, &attrs);
  /* If the declarator is not suitable for a function definition,
     cause a syntax error.  */
  if (decl1 == NULL_TREE || FUNC1 (decl1) != FUNCTION_DECL)
    return 0;

  if (FUNC0 (decl1))
    /* main must return int.  grokfndecl should have corrected it
       (and issued a diagnostic) if the user got it wrong.  */
    FUNC4 (FUNC6 (FUNC2 (FUNC2 (decl1)),
			     integer_type_node));

  /* APPLE LOCAL begin warn missing prototype 6261539 */
  FUNC3 (decl1);
  /* APPLE LOCAL end warn missing prototype 6261539 */

  FUNC7 (decl1, attrs, /*flags=*/SF_DEFAULT);

  return 1;
}