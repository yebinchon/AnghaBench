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
struct TYPE_2__ {int /*<<< orphan*/  (* type_decl ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TV_SYMOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* debug_hooks ; 
 scalar_t__ errorcount ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (tree type, int toplev)
{
  /* Avoid confusing the debug information machinery when there are
     errors.  */
  if (errorcount != 0 || sorrycount != 0)
    return;

  FUNC3 (TV_SYMOUT);
  debug_hooks->type_decl (FUNC0 (type), !toplev);
  FUNC2 (TV_SYMOUT);
}