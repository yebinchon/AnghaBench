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
struct value_data {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 scalar_t__ FUNC2 (int,scalar_t__,struct value_data*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__*,scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC5 (rtx *loc, enum reg_class cl, rtx insn,
			  struct value_data *vd)
{
  rtx new = FUNC2 (cl, *loc, vd);
  if (new)
    {
      if (dump_file)
	FUNC3 (dump_file, "insn %u: replaced reg %u with %u\n",
		 FUNC0 (insn), FUNC1 (*loc), FUNC1 (new));

      FUNC4 (insn, loc, new, 1);
      return true;
    }
  return false;
}