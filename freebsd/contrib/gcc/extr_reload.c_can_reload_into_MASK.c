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
struct recog_data {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct recog_data recog_data ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (rtx in, int regno, enum machine_mode mode)
{
  rtx dst, test_insn;
  int r = 0;
  struct recog_data save_recog_data;

  /* For matching constraints, we often get notional input reloads where
     we want to use the original register as the reload register.  I.e.
     technically this is a non-optional input-output reload, but IN is
     already a valid register, and has been chosen as the reload register.
     Speed this up, since it trivially works.  */
  if (FUNC1 (in))
    return 1;

  /* To test MEMs properly, we'd have to take into account all the reloads
     that are already scheduled, which can become quite complicated.
     And since we've already handled address reloads for this MEM, it
     should always succeed anyway.  */
  if (FUNC0 (in))
    return 1;

  /* If we can make a simple SET insn that does the job, everything should
     be fine.  */
  dst =  FUNC4 (mode, regno);
  test_insn = FUNC6 (FUNC5 (VOIDmode, dst, in));
  save_recog_data = recog_data;
  if (FUNC7 (test_insn) >= 0)
    {
      FUNC3 (test_insn);
      r = FUNC2 (1);
    }
  recog_data = save_recog_data;
  return r;
}