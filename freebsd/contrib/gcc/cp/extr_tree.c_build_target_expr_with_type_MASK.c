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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ TARGET_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VA_ARG_EXPR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

tree
FUNC7 (tree init, tree type)
{
  FUNC6 (!FUNC3 (type));

  if (FUNC1 (init) == TARGET_EXPR)
    return init;
  else if (FUNC0 (type) && !FUNC2 (type)
	   && FUNC1 (init) != COND_EXPR
	   && FUNC1 (init) != CONSTRUCTOR
	   && FUNC1 (init) != VA_ARG_EXPR)
    /* We need to build up a copy constructor call.  COND_EXPR is a special
       case because we already have copies on the arms and we don't want
       another one here.  A CONSTRUCTOR is aggregate initialization, which
       is handled separately.  A VA_ARG_EXPR is magic creation of an
       aggregate; there's no additional work to be done.  */
    return FUNC4 (init);

  return FUNC5 (type, init);
}