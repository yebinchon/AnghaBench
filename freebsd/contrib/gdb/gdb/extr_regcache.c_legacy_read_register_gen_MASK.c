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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  registers_ptid ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (int regnum, char *myaddr)
{
  FUNC1 (regnum >= 0 && regnum < (NUM_REGS + NUM_PSEUDO_REGS));
  if (! FUNC3 (registers_ptid, inferior_ptid))
    {
      FUNC6 ();
      registers_ptid = inferior_ptid;
    }

  if (!FUNC5 (regnum))
    FUNC7 (regnum);

  FUNC2 (myaddr, FUNC4 (current_regcache, regnum),
	  FUNC0 (regnum));
}