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
 scalar_t__ NULL_TREE ; 
 int TFF_CLASS_KEY_OR_ENUM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ null_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char const* FUNC9 (scalar_t__,int) ; 

__attribute__((used)) static const char *
FUNC10 (tree p, int verbose)
{
  int flags = 0;
  if (verbose)
    flags |= TFF_CLASS_KEY_OR_ENUM;

  if (p == NULL_TREE)
    return "";

  if (FUNC2 (FUNC1 (p)))
    return FUNC9 (p, flags);

  FUNC8 ();
  for (; p; p = FUNC0 (p))
    {
      if (FUNC1 (p) == null_node)
	FUNC5 (cxx_pp, "NULL");
      else
	FUNC3 (FUNC4 (FUNC1 (p)), flags);
      if (FUNC0 (p))
	FUNC7 (cxx_pp);
    }
  return FUNC6 (cxx_pp);
}