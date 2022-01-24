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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int uid_shuid ; 

int
FUNC3 (rtx insn)
{
  int insn_id, label_id;

  FUNC2 (uid_shuid);
  insn_id = FUNC0 (insn);
  label_id = FUNC0 (FUNC1 (insn));
  /* We've hit some insns that does not have id information available.  */
  FUNC2 (insn_id && label_id);
  return insn_id < label_id;
}