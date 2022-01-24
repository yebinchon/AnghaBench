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
struct reggroup {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gdbarch*,int,struct reggroup*) ; 
 struct reggroup* float_reggroup ; 
 struct reggroup* general_reggroup ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 struct reggroup* i386_mmx_reggroup ; 
 int FUNC3 (struct gdbarch*,int) ; 
 scalar_t__ FUNC4 (struct gdbarch*,int) ; 
 struct reggroup* i386_sse_reggroup ; 
 scalar_t__ FUNC5 (struct gdbarch*,int) ; 
 struct reggroup* vector_reggroup ; 

int
FUNC6 (struct gdbarch *gdbarch, int regnum,
			  struct reggroup *group)
{
  int sse_regnum_p = (FUNC5 (gdbarch, regnum)
		      || FUNC4 (gdbarch, regnum));
  int fp_regnum_p = (FUNC1 (regnum)
		     || FUNC2 (regnum));
  int mmx_regnum_p = (FUNC3 (gdbarch, regnum));

  if (group == i386_mmx_reggroup)
    return mmx_regnum_p;
  if (group == i386_sse_reggroup)
    return sse_regnum_p;
  if (group == vector_reggroup)
    return (mmx_regnum_p || sse_regnum_p);
  if (group == float_reggroup)
    return fp_regnum_p;
  if (group == general_reggroup)
    return (!fp_regnum_p && !mmx_regnum_p && !sse_regnum_p);

  return FUNC0 (gdbarch, regnum, group);
}