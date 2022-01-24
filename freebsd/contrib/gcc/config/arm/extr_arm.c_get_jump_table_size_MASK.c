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
typedef  int /*<<< orphan*/  rtx ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ JUMP_TABLES_IN_TEXT_SECTION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ readonly_data_section ; 
 scalar_t__ text_section ; 

__attribute__((used)) static HOST_WIDE_INT
FUNC5 (rtx insn)
{
  /* ADDR_VECs only take room if read-only data does into the text
     section.  */
  if (JUMP_TABLES_IN_TEXT_SECTION || readonly_data_section == text_section)
    {
      rtx body = FUNC3 (insn);
      int elt = FUNC0 (body) == ADDR_DIFF_VEC ? 1 : 0;

      return FUNC2 (FUNC1 (body)) * FUNC4 (body, elt);
    }

  return 0;
}