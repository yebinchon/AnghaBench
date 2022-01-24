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
struct dwarf2_fde {int /*<<< orphan*/  next; } ;
struct comp_unit {int /*<<< orphan*/  objfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  dwarf2_frame_objfile_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dwarf2_fde*) ; 

__attribute__((used)) static void
FUNC2 (struct comp_unit *unit, struct dwarf2_fde *fde)
{
  fde->next = FUNC0 (unit->objfile, dwarf2_frame_objfile_data);
  FUNC1 (unit->objfile, dwarf2_frame_objfile_data, fde);
}