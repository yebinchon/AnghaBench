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
 scalar_t__ CODE_64BIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_code ; 
 unsigned int FUNC2 (char*) ; 
 int /*<<< orphan*/  x86_cie_data_alignment ; 
 int /*<<< orphan*/  x86_dwarf2_return_column ; 

void
FUNC3 (void)
{
  static unsigned int sp_regno;

  if (!sp_regno)
    sp_regno = FUNC2 (flag_code == CODE_64BIT
					    ? "rsp" : "esp");

  FUNC0 (sp_regno, -x86_cie_data_alignment);
  FUNC1 (x86_dwarf2_return_column, x86_cie_data_alignment);
}