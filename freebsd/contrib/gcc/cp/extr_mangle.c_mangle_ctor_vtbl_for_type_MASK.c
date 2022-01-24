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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ DEBUG_MANGLE ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 

tree
FUNC10 (const tree type, const tree binfo)
{
  const char *result;

  FUNC5 (type, /*ident_p=*/true);

  FUNC8 ("_Z");
  FUNC8 ("TC");
  FUNC9 (type);
  FUNC7 (FUNC0 (binfo));
  FUNC6 ('_');
  FUNC9 (FUNC1 (binfo));

  result = FUNC2 (/*warn=*/false);
  if (DEBUG_MANGLE)
    FUNC3 (stderr, "mangle_ctor_vtbl_for_type = %s\n\n", result);
  return FUNC4 (result);
}