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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static LONGEST
FUNC2 (int regnum, ptid_t ptid)
{
  ptid_t save_ptid;
  LONGEST retval;

  if (FUNC0 (ptid, inferior_ptid))
    return FUNC1 (regnum);

  save_ptid = inferior_ptid;

  inferior_ptid = ptid;

  retval = FUNC1 (regnum);

  inferior_ptid = save_ptid;

  return retval;
}