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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct value**,int,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct value**,int,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct value**,int,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static CORE_ADDR
FUNC6 (struct gdbarch *gdbarch,
		 CORE_ADDR sp, CORE_ADDR funaddr, int using_gcc,
		 struct value **args, int nargs,
		 struct type *value_type,
		 CORE_ADDR *real_pc, CORE_ADDR *bp_addr)
{
  if (FUNC3 (gdbarch))
    return FUNC2 (gdbarch, sp, funaddr, using_gcc,
				    args, nargs, value_type, real_pc, bp_addr);
  else if (FUNC0 ()
	   && !FUNC1 (gdbarch))
    return FUNC5 (gdbarch, sp, funaddr, using_gcc,
				   args, nargs, value_type, real_pc, bp_addr);
  else    
    return FUNC4 (gdbarch, sp, funaddr, using_gcc,
				    args, nargs, value_type, real_pc, bp_addr);
}