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
typedef  int /*<<< orphan*/  symbolS ;
struct dwarf2_line_info {int flags; } ;

/* Variables and functions */
 scalar_t__ DEBUG_DWARF2 ; 
 int DWARF2_FLAG_BASIC_BLOCK ; 
 int DWARF2_FLAG_EPILOGUE_BEGIN ; 
 int DWARF2_FLAG_PROLOGUE_END ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_CODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dwarf2_line_info current ; 
 scalar_t__ debug_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dwarf2_line_info*) ; 
 int /*<<< orphan*/  dwarf2_loc_mark_labels ; 
 int /*<<< orphan*/  FUNC3 (struct dwarf2_line_info*) ; 
 int /*<<< orphan*/  loc_directive_seen ; 
 scalar_t__ now_seg ; 
 int /*<<< orphan*/  stdoutput ; 

void
FUNC4 (symbolS *label)
{
  struct dwarf2_line_info loc;

  if (!dwarf2_loc_mark_labels)
    return;
  if (FUNC0 (label) != now_seg)
    return;
  if (!(FUNC1 (stdoutput, now_seg) & SEC_CODE))
    return;
  
  if (debug_type == DEBUG_DWARF2)
    FUNC3 (&loc);
  else
    {
      loc = current;
      loc_directive_seen = FALSE;
    }

  loc.flags |= DWARF2_FLAG_BASIC_BLOCK;

  current.flags &= ~(DWARF2_FLAG_BASIC_BLOCK
		     | DWARF2_FLAG_PROLOGUE_END
		     | DWARF2_FLAG_EPILOGUE_BEGIN);

  FUNC2 (label, &loc);
}