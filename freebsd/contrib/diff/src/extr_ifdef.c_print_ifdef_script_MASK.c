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
struct change {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  valid_lines; int /*<<< orphan*/  prefix_lines; } ;

/* Variables and functions */
 size_t UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* files ; 
 int /*<<< orphan*/  find_change ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * group_format ; 
 int /*<<< orphan*/  next_line0 ; 
 int /*<<< orphan*/  next_line1 ; 
 int /*<<< orphan*/  print_ifdef_hunk ; 
 int /*<<< orphan*/  FUNC2 (struct change*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3 (struct change *script)
{
  next_line0 = next_line1 = - files[0].prefix_lines;
  FUNC2 (script, find_change, print_ifdef_hunk);
  if (next_line0 < files[0].valid_lines
      || next_line1 < files[1].valid_lines)
    {
      FUNC0 ();
      FUNC1 (group_format[UNCHANGED],
		    next_line0, files[0].valid_lines,
		    next_line1, files[1].valid_lines);
    }
}