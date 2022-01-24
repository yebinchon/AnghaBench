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
typedef  scalar_t__ valueT ;
struct insn_label_list {int /*<<< orphan*/  label; struct insn_label_list* next; } ;
struct TYPE_4__ {struct insn_label_list* label_list; } ;
typedef  TYPE_1__ segment_info_type ;
struct TYPE_5__ {scalar_t__ mips16; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  frag_now ; 
 scalar_t__ FUNC3 () ; 
 TYPE_3__ mips_opts ; 
 scalar_t__ now_seg ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  segment_info_type *si = FUNC4 (now_seg);
  struct insn_label_list *l;
  valueT val;

  for (l = si->label_list; l != NULL; l = l->next)
    {
      FUNC2 (FUNC0 (l->label) == now_seg);
      FUNC5 (l->label, frag_now);
      val = (valueT) FUNC3 ();
      /* mips16 text labels are stored as odd.  */
      if (mips_opts.mips16)
	++val;
      FUNC1 (l->label, val);
    }
}