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
 int /*<<< orphan*/  dwarf2_frame_data ; 
 int /*<<< orphan*/  dwarf2_frame_init ; 
 int /*<<< orphan*/  dwarf2_frame_objfile_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2 (void)
{
  dwarf2_frame_data = FUNC0 (dwarf2_frame_init);
  dwarf2_frame_objfile_data = FUNC1 ();
}