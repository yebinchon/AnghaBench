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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_PARM_INDEX ; 
 int TFF_DECL_SPECIFIERS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (tree t, tree type, int flags)
{
  if (flags & TFF_DECL_SPECIFIERS)
    {
      FUNC6 (type, flags);
      FUNC9 (cxx_pp);
    }
  if (!FUNC1 (t) || FUNC3 (FUNC1 (t)) != TEMPLATE_PARM_INDEX)
    FUNC5 (FUNC0 (t), flags);
  if (FUNC2 (t))
    FUNC4 (FUNC2 (t), flags);
  else
    FUNC8 (cxx_pp, "<anonymous>");
  if (flags & TFF_DECL_SPECIFIERS)
    FUNC7 (type, flags);
}