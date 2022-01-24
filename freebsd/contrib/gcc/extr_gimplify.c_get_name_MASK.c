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
#define  ADDR_EXPR 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC6 (tree t)
{
  tree stripped_decl;

  stripped_decl = t;
  FUNC3 (stripped_decl);
  if (FUNC1 (stripped_decl) && FUNC0 (stripped_decl))
    return FUNC2 (FUNC0 (stripped_decl));
  else
    {
      switch (FUNC4 (stripped_decl))
	{
	case ADDR_EXPR:
	  return FUNC6 (FUNC5 (stripped_decl, 0));
	  break;
	default:
	  return NULL;
	}
    }
}