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
struct likely_spilled_retval_info {unsigned int regno; unsigned int nregs; unsigned int mask; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int** hard_regno_nregs ; 

__attribute__((used)) static void
FUNC4 (rtx x, rtx set, void *data)
{
  struct likely_spilled_retval_info *info = data;
  unsigned regno, nregs;
  unsigned new_mask;

  if (!FUNC2 (FUNC3 (set, 0)))
    return;
  regno = FUNC1 (x);
  if (regno >= info->regno + info->nregs)
    return;
  nregs = hard_regno_nregs[regno][FUNC0 (x)];
  if (regno + nregs <= info->regno)
    return;
  new_mask = (2U << (nregs - 1)) - 1;
  if (regno < info->regno)
    new_mask >>= info->regno - regno;
  else
    new_mask <<= regno - info->regno;
  info->mask &= new_mask;
}