#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct insn_label_list {int /*<<< orphan*/ * label; } ;
struct TYPE_3__ {struct insn_label_list* label_list; } ;
typedef  TYPE_1__ segment_info_type ;

/* Variables and functions */
 scalar_t__ auto_align ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  now_seg ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (int type)
{
  segment_info_type *si = FUNC4 (now_seg);
  struct insn_label_list *l = si->label_list;
  symbolS *label;

  label = l != NULL ? l->label : NULL;

  FUNC3 ();

  if (auto_align)
    {
      if (type == 'd')
	FUNC1 (3, 0, label);
      else
	FUNC1 (2, 0, label);
    }

  FUNC2 ();

  FUNC0 (type);
}