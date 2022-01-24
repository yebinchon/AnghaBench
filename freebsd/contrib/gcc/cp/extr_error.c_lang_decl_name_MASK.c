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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  TFF_DECL_SPECIFIERS ; 
 int /*<<< orphan*/  TFF_PLAIN_IDENTIFIER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxx_pp ; 
 char const* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char const* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

const char *
FUNC11 (tree decl, int v)
{
  if (v >= 2)
    return FUNC4 (decl, TFF_DECL_SPECIFIERS);

  FUNC10 ();
  if (v == 1 && FUNC1 (decl))
    {
      FUNC7 (FUNC0 (decl), TFF_PLAIN_IDENTIFIER);
      FUNC8 (cxx_pp);
    }

  if (FUNC3 (decl) == FUNCTION_DECL)
    FUNC6 (decl, TFF_PLAIN_IDENTIFIER);
  else
    FUNC5 (FUNC2 (decl), TFF_PLAIN_IDENTIFIER);

  return FUNC9 (cxx_pp);
}