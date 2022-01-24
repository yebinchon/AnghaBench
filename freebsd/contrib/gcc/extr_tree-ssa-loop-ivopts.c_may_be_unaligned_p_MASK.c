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
typedef  int /*<<< orphan*/  tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  unsigned int HOST_WIDE_INT ;

/* Variables and functions */
 unsigned int BITS_PER_UNIT ; 
 int BLKmode ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ TARGET_MEM_REF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int*,unsigned int*,int /*<<< orphan*/ *,int*,int*,int*,int) ; 

__attribute__((used)) static bool
FUNC5 (tree ref)
{
  tree base;
  tree base_type;
  HOST_WIDE_INT bitsize;
  HOST_WIDE_INT bitpos;
  tree toffset;
  enum machine_mode mode;
  int unsignedp, volatilep;
  unsigned base_align;

  /* TARGET_MEM_REFs are translated directly to valid MEMs on the target,
     thus they are not misaligned.  */
  if (FUNC1 (ref) == TARGET_MEM_REF)
    return false;

  /* The test below is basically copy of what expr.c:normal_inner_ref
     does to check whether the object must be loaded by parts when
     STRICT_ALIGNMENT is true.  */
  base = FUNC4 (ref, &bitsize, &bitpos, &toffset, &mode,
			      &unsignedp, &volatilep, true);
  base_type = FUNC2 (base);
  base_align = FUNC3 (base_type);

  if (mode != BLKmode
      && (base_align < FUNC0 (mode)
	  || bitpos % FUNC0 (mode) != 0
	  || bitpos % BITS_PER_UNIT != 0))
    return true;

  return false;
}