#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int /*<<< orphan*/  (* global_decl ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TV_SYMOUT ; 
 TYPE_1__* debug_hooks ; 
 scalar_t__ errorcount ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (tree *vec, int len)
{
  int i;

  /* Avoid confusing the debug information machinery when there are errors.  */
  if (errorcount != 0 || sorrycount != 0)
    return;

  FUNC2 (TV_SYMOUT);
  for (i = 0; i < len; i++)
    debug_hooks->global_decl (vec[i]);
  FUNC1 (TV_SYMOUT);
}