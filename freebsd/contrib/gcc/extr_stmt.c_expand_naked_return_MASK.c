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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ naked_return_label ; 

void
FUNC4 (void)
{
  rtx end_label;

  FUNC0 ();
  FUNC1 ();

  end_label = naked_return_label;
  if (end_label == 0)
    end_label = naked_return_label = FUNC3 ();

  FUNC2 (end_label);
}