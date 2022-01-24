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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ TYPE_DECL ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC7 (const tree decl)
{
  const char *result;

  FUNC4 (decl, /*ident_p=*/true);

  if (FUNC0 (decl) == TYPE_DECL)
    FUNC6 (FUNC1 (decl));
  else
    FUNC5 (decl, true);

  result = FUNC2 (/*warn=*/true);
  if (DEBUG_MANGLE)
    FUNC3 (stderr, "mangle_decl_string = '%s'\n\n", result);
  return result;
}