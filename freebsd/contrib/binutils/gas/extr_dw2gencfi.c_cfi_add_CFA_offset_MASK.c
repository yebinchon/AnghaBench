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
typedef  unsigned int offsetT ;

/* Variables and functions */
 unsigned int DWARF2_CIE_DATA_ALIGNMENT ; 
 int /*<<< orphan*/  DW_CFA_offset ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

void
FUNC4 (unsigned regno, offsetT offset)
{
  unsigned int abs_data_align;

  FUNC2 (DWARF2_CIE_DATA_ALIGNMENT != 0);
  FUNC3 (DW_CFA_offset, regno, offset);

  abs_data_align = (DWARF2_CIE_DATA_ALIGNMENT < 0
		    ? -DWARF2_CIE_DATA_ALIGNMENT : DWARF2_CIE_DATA_ALIGNMENT);
  if (offset % abs_data_align)
    FUNC1 (FUNC0("register save offset not a multiple of %u"), abs_data_align);
}