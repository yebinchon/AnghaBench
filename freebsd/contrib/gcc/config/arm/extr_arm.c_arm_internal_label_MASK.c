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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int arm_ccfsm_state ; 
 int /*<<< orphan*/ * arm_target_insn ; 
 scalar_t__ arm_target_label ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2 (FILE *stream, const char *prefix, unsigned long labelno)
{
  if (arm_ccfsm_state == 3 && (unsigned) arm_target_label == labelno
      && !FUNC1 (prefix, "L"))
    {
      arm_ccfsm_state = 0;
      arm_target_insn = NULL;
    }
  FUNC0 (stream, prefix, labelno);
}