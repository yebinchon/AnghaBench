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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ SUPPORTS_WEAK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  weak_decls ; 

void
FUNC8 (tree decl)
{
  if (! FUNC3 (decl))
    FUNC4 ("weak declaration of %q+D must be public", decl);
  else if (FUNC2 (decl) == FUNCTION_DECL && FUNC1 (decl))
    FUNC4 ("weak declaration of %q+D must precede definition", decl);
  else if (SUPPORTS_WEAK)
    {
      if (! FUNC0 (decl))
	weak_decls = FUNC6 (NULL, decl, weak_decls);
    }
  else
    FUNC7 (0, "weak declaration of %q+D not supported", decl);

  FUNC5 (decl);
}