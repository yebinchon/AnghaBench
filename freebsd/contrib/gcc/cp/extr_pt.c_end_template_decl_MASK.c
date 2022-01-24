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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_template_parms ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3 (void)
{
  FUNC2 ();

  if (! processing_template_decl)
    return;

  /* This matches the pushlevel in begin_template_parm_list.  */
  FUNC1 ();

  --processing_template_decl;
  current_template_parms = FUNC0 (current_template_parms);
}