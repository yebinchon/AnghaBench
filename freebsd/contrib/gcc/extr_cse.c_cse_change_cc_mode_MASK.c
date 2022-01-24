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
struct change_cc_mode_args {scalar_t__ newreg; int /*<<< orphan*/  insn; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC4 (rtx *loc, void *data)
{
  struct change_cc_mode_args* args = (struct change_cc_mode_args*)data;

  if (*loc
      && FUNC2 (*loc)
      && FUNC1 (*loc) == FUNC1 (args->newreg)
      && FUNC0 (*loc) != FUNC0 (args->newreg))
    {
      FUNC3 (args->insn, loc, args->newreg, 1);
      
      return -1;
    }
  return 0;
}