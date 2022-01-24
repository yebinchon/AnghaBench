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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  OPT_Wpragmas ; 
 scalar_t__ SUPPORTS_WEAK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC13 (tree decl, tree value)
{
  if (value)
    {
      value = FUNC7 (FUNC3 (value),
			    FUNC4 (value));
      FUNC9 (&decl, FUNC8 (FUNC11 ("alias"),
					       FUNC8 (NULL, value)),
		       0);
    }

  if (SUPPORTS_WEAK && FUNC1 (decl) && FUNC6 (decl)
      && !FUNC2 (decl) /* Don't complain about a redundant #pragma.  */
      && FUNC5 (FUNC0 (decl)))
    FUNC12 (OPT_Wpragmas, "applying #pragma weak %q+D after first use "
	     "results in unspecified behavior", decl);

  FUNC10 (decl);
}