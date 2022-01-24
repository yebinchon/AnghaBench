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
 int TFF_EXPR_IN_PARENS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7 (const char *opstring, tree t, int flags)
{
  FUNC3 (cxx_pp);
  FUNC1 (FUNC0 (t, 0), flags | TFF_EXPR_IN_PARENS);
  FUNC5 (cxx_pp);
  if (opstring)
    FUNC2 (cxx_pp, opstring);
  else
    FUNC6 (cxx_pp, "<unknown operator>");
  FUNC5 (cxx_pp);
  FUNC1 (FUNC0 (t, 1), flags | TFF_EXPR_IN_PARENS);
  FUNC4 (cxx_pp);
}