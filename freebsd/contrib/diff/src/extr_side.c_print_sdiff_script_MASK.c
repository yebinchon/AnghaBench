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
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* files ; 
 int /*<<< orphan*/  find_change ; 
 int /*<<< orphan*/  next0 ; 
 int /*<<< orphan*/  next1 ; 
 int /*<<< orphan*/  FUNC1 (struct change*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_sdiff_hunk ; 

void
FUNC3 (struct change *script)
{
  FUNC0 ();

  next0 = next1 = - files[0].prefix_lines;
  FUNC1 (script, find_change, print_sdiff_hunk);

  FUNC2 (files[0].valid_lines, files[1].valid_lines);
}