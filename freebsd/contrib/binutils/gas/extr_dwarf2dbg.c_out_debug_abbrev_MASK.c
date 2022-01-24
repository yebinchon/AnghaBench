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
typedef  int /*<<< orphan*/  segT ;
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  DW_AT_comp_dir ; 
 int /*<<< orphan*/  DW_AT_high_pc ; 
 int /*<<< orphan*/  DW_AT_language ; 
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  DW_AT_producer ; 
 int /*<<< orphan*/  DW_AT_ranges ; 
 int /*<<< orphan*/  DW_AT_stmt_list ; 
 int /*<<< orphan*/  DW_CHILDREN_no ; 
 int /*<<< orphan*/  DW_FORM_addr ; 
 int /*<<< orphan*/  DW_FORM_data2 ; 
 int /*<<< orphan*/  DW_FORM_data4 ; 
 int /*<<< orphan*/  DW_FORM_data8 ; 
 int /*<<< orphan*/  DW_FORM_string ; 
 int DW_TAG_compile_unit ; 
 TYPE_1__* all_segs ; 
 scalar_t__ dwarf2_format_32bit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (segT abbrev_seg)
{
  FUNC4 (abbrev_seg, 0);

  FUNC3 (1);
  FUNC3 (DW_TAG_compile_unit);
  FUNC2 (DW_CHILDREN_no);
  FUNC1 (DW_AT_stmt_list, DW_FORM_data4);
  if (all_segs->next == NULL)
    {
      FUNC1 (DW_AT_low_pc, DW_FORM_addr);
      FUNC1 (DW_AT_high_pc, DW_FORM_addr);
    }
  else
    {
      if (FUNC0 () == dwarf2_format_32bit)
	FUNC1 (DW_AT_ranges, DW_FORM_data4);
      else
	FUNC1 (DW_AT_ranges, DW_FORM_data8);
    }
  FUNC1 (DW_AT_name, DW_FORM_string);
  FUNC1 (DW_AT_comp_dir, DW_FORM_string);
  FUNC1 (DW_AT_producer, DW_FORM_string);
  FUNC1 (DW_AT_language, DW_FORM_data2);
  FUNC1 (0, 0);

  /* Terminate the abbreviations for this compilation unit.  */
  FUNC2 (0);
}