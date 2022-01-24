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
 scalar_t__ DEBUG_MANGLE ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static tree
FUNC6 (const tree type, const char *code)
{
  const char *result;

  /* We don't have an actual decl here for the special component, so
     we can't just process the <encoded-name>.  Instead, fake it.  */
  FUNC3 (type, /*ident_p=*/true);

  /* Start the mangling.  */
  FUNC4 ("_Z");
  FUNC4 (code);

  /* Add the type.  */
  FUNC5 (type);
  result = FUNC0 (/*warn=*/false);

  if (DEBUG_MANGLE)
    FUNC1 (stderr, "mangle_special_for_type = %s\n\n", result);

  return FUNC2 (result);
}