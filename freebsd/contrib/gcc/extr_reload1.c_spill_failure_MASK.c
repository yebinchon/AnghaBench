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
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/ * reg_class_names ; 

__attribute__((used)) static void
FUNC8 (rtx insn, enum reg_class class)
{
  if (FUNC2 (FUNC1 (insn)) >= 0)
    FUNC5 (insn, "can't find a register in class %qs while "
		   "reloading %<asm%>",
		   reg_class_names[class]);
  else
    {
      FUNC4 ("unable to find a register to spill in class %qs",
	     reg_class_names[class]);

      if (dump_file)
	{
	  FUNC7 (dump_file, "\nReloads for insn # %d\n", FUNC0 (insn));
	  FUNC3 (dump_file);
	}
      FUNC6 ("this is the insn:", insn);
    }
}