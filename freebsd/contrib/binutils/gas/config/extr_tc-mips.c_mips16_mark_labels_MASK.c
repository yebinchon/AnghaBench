#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct insn_label_list {int /*<<< orphan*/ * label; struct insn_label_list* next; } ;
struct TYPE_4__ {struct insn_label_list* label_list; } ;
typedef  TYPE_1__ segment_info_type ;
struct TYPE_5__ {int /*<<< orphan*/  mips16; } ;

/* Variables and functions */
 scalar_t__ IS_ELF ; 
 int /*<<< orphan*/  STO_MIPS16 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__ mips_opts ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  segment_info_type *si = FUNC6 (now_seg);
  struct insn_label_list *l;

  if (!mips_opts.mips16)
    return;

  for (l = si->label_list; l != NULL; l = l->next)
   {
      symbolS *label = l->label;

#if defined(OBJ_ELF) || defined(OBJ_MAYBE_ELF)
      if (IS_ELF)
	S_SET_OTHER (label, STO_MIPS16);
#endif
      if ((FUNC0 (label) & 1) == 0
	/* Don't adjust the address if the label is global or weak, or
	   in a link-once section, since we'll be emitting symbol reloc
	   references to it which will be patched up by the linker, and
	   the final value of the symbol may or may not be MIPS16.  */
	  && ! FUNC2 (label)
	  && ! FUNC1 (label)
	  && ! FUNC5 (label, now_seg))
	FUNC4 (label, FUNC0 (label) | 1);
    }
}