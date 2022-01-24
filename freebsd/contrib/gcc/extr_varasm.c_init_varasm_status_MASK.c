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
struct varasm_status {scalar_t__ deferred_constants; int /*<<< orphan*/  pool; } ;
struct function {struct varasm_status* varasm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct varasm_status* FUNC1 (int) ; 

void
FUNC2 (struct function *f)
{
  struct varasm_status *p;

  p = FUNC1 (sizeof (struct varasm_status));
  f->varasm = p;

  p->pool = FUNC0 ();
  p->deferred_constants = 0;
}