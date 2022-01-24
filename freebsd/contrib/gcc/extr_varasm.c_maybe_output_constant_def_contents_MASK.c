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
struct constant_descriptor_tree {int /*<<< orphan*/  value; int /*<<< orphan*/  rtl; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cfun ; 
 scalar_t__ flag_syntax_only ; 
 int /*<<< orphan*/  n_deferred_constants ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct constant_descriptor_tree *desc,
				    int defer)
{
  rtx symbol = FUNC1 (desc->rtl, 0);
  tree exp = desc->value;

  if (flag_syntax_only)
    return;

  if (FUNC0 (exp))
    /* Already output; don't do it again.  */
    return;

  /* We can always defer constants as long as the context allows
     doing so.  */
  if (defer)
    {
      /* Increment n_deferred_constants if it exists.  It needs to be at
	 least as large as the number of constants actually referred to
	 by the function.  If it's too small we'll stop looking too early
	 and fail to emit constants; if it's too large we'll only look
	 through the entire function when we could have stopped earlier.  */
      if (cfun)
	n_deferred_constants++;
      return;
    }

  FUNC2 (symbol);
}