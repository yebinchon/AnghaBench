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
struct bb_info {int /*<<< orphan*/  avloc; int /*<<< orphan*/  killed; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  void* basic_block ;

/* Variables and functions */
 struct bb_info* FUNC0 (void*) ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7 (rtx reg, rtx setter, void *data)
{
  int regno;
  basic_block bb = data;
  struct bb_info *bb_info = FUNC0 (bb);

  if (FUNC1 (reg) == SUBREG)
    reg = FUNC4 (reg);

  if (!FUNC3 (reg))
    return;

  regno = FUNC2 (reg);
  FUNC6 (bb_info->killed, regno);
  
  if (FUNC1 (setter) != CLOBBER)
    FUNC6 (bb_info->avloc, regno);
  else
    FUNC5 (bb_info->avloc, regno);
}