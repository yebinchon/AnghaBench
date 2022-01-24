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
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (tree arg)
{
  if (!processing_template_decl)
    return false;

  if (FUNC0 (arg) == TEMPLATE_DECL
      || FUNC0 (arg) == TEMPLATE_TEMPLATE_PARM)
    return FUNC2 (arg);
  else if (FUNC1 (arg))
    return FUNC3 (arg);
  else
    return (FUNC4 (arg)
	    || FUNC5 (arg));
}